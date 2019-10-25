class Station < ApplicationRecord
  belongs_to :property, optional: true
  # has_many :property_stations, dependent: :destroy
end
