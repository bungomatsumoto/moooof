class Property < ApplicationRecord
  # has_many :stations, through: :property_stations
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true
end
