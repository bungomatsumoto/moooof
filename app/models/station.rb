class Station < ApplicationRecord
  has_many :property, through: :property_stations
  has_many :property_stations, dependent: :destroy
end
