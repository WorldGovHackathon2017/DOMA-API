FactoryBot.define do
  factory :listing do
    host nil
    amenity nil
    property_type 1
    listing_type 1
    number_of_guests 1
    number_of_bedrooms 1
    number_of_beds 1
    number_of_bathrooms 1
    private 1
    street_address "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
  end
end
