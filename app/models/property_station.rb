class PropertyStation < ApplicationRecord
  belongs_to :property
  belongs_to :station
end
