class Property < ApplicationRecord
  has_many :stations, through: :property_stations
  has_many :property_stations, dependent: :destroy
  accepts_nested_attributes_for :property_stations, allow_destroy: true
end
