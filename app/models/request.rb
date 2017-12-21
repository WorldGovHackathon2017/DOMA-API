class Request < ApplicationRecord
  belongs_to :refugee
  belongs_to :amenity

  def json_with_associations
    self.as_json(include: {
      refugee: {},
      amenity: {}
      })
  end
end
