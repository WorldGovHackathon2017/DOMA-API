class Refugee < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :amenities, through: :requests
  
  def json_with_associations
    self.as_json(include: {
      requests: {include: :amenities}
      })
  end
end
