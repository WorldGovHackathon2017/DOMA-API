class Listing < ApplicationRecord
  belongs_to :host
  belongs_to :amenity
  has_and_belongs_to_many :requests
  
  def json_with_associations
    self.as_json(include: {
      host: {},
      amenity: {}
      })
  end
end
