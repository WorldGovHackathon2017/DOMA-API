class Listing < ApplicationRecord
  belongs_to :host
  belongs_to :amenity
end
