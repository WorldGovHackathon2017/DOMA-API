class Amenity < ApplicationRecord
  has_many :listings, dependent: :destroy
  has_many :hosts, through: :listings
  has_many :requests, dependent: :destroy
  has_many :refugees, through: :requests

  def json_with_association
    self.as_json(include: {
    listings: {include: {host: {}, amenity: {}}},
    requests: {include: {refugee: {}, amenity: {}}},
    hosts: {},
    refugees: {}
  })
  end
end
