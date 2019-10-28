class Property < ApplicationRecord
  # has_many :stations, through: :property_stations
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true
  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :notes, presence: true
end
