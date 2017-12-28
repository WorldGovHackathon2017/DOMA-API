class Request < ApplicationRecord
  belongs_to :refugee
  belongs_to :amenity
  has_and_belongs_to_many :listings

  def json_with_associations
    self.as_json(include: {
      refugee: {},
      amenity: {}
      })
  end
end
