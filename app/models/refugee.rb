class Refugee < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :amenities, through: :requests
  
end
