class Amenity < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :hosts, through: :listings
  has_many :requests, dependent: :destroy
  has_many :refugees, through: :requests

end
