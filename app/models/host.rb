class Host < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :amenities, through: :listings
  
end
