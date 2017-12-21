class Listing < ApplicationRecord
  belongs_to :host
  belongs_to :amenity
  
  def json_with_associations
    self.as_json(include: {
      host: {},
      amenity: {}
      })
  end
end
