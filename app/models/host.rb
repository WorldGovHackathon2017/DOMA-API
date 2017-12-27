class Host < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :amenities, through: :listings
  

  def json_with_associations
    self.as_json(include: {
      listings: {include: :amenity}
      })
  end
end
