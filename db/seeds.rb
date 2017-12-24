# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Host.destroy_all
Amenity.destroy_all
Listing.destroy_all
Refugee.destroy_all
Request.destroy_all


host = Host.create(
  first_name: "Roland",
  last_name: "Frohman III",
  username: "rhfrohman",
  email: "rhfrohman@gmail.com",
  phone_number: "(313)549-4823",
  linkedin_url: "https://www.linkedin.com/in/rhfrohman",
  city: "Detroit",
  state: "Michigan",
  country: "US",
  photo_url: "",
  completed_registration: true
  )


host_amenities = host.amenities.create(
  heat: true,
  air_conditioning: true,
  washer: true,
  dryer: true, 
  closets: 2, 
  drawers: 5,
  wifi: true, 
  computer: true, 
  phone: true,
  tv: true, 
  bikes: 2, 
  transportation: true,
  pet_friendly: true, 
  family_friendly: true,
  baby_friendly: true, 
  toddler_friendly: true, 
  child_friendly: true,
  teen_friendly: true,
  elderly_friendly: true
  )


listing = host.listings.create(
  amenity: host_amenities,
  handicap_accessible: true,
  provide_medical_attention: true,
  access_to_schools: true,
  property_type: 1,
  listing_type: 1,
  number_of_guests: 5,
  number_of_bedrooms: 2,
  number_of_beds: 3,
  number_of_bathrooms: 1,
  private: true, 
  phone_number: "(415)678-3892",
  street_address: "569 Forest Hill Rd",
  city: "Mansfield",
  state: "Ohio",
  country: "US",
  photo_1_url: "",
  photo_2_url: "",
  photo_3_url: "",
  completed_listing: true
  )


refugee = Refugee.create(
  first_name: "Malala",
  last_name: "Yousafzai",
  username: "malala",
  email: "malala.yousafzai@gmail.com",
  phone_number: "(248)664-7286",
  social_media_url: "facebook.com",
  home_city: "Mingora",
  home_country: "Pakistan",
  organization_name: "U.S. Citizenship & Immigration Services",
  organization_url: "https://www.uscis.gov/humanitarian/refugees-asylum/asylum",
  organization_contact_name: "Jenna Ritten",
  organization_contact_email: "uscis.webmaster@uscis.dhs.gov",
  organization_contact_phone: "800-375-5283",
  current_city: "Dearborn",
  current_state: "Michigan",
  current_country: "US",
  photo_url: "",
  completed_registration: true
  )


refugee_needs = refugee.amenities.create(
  heat: true,
  air_conditioning: true,
  washer: true,
  dryer: true, 
  closets: 2, 
  drawers: 5,
  wifi: true, 
  computer: true, 
  phone: true,
  tv: true, 
  bikes: 2, 
  transportation: true,
  pet_friendly: true, 
  baby_friendly: false, 
  toddler_friendly: false, 
  child_friendly: true,
  teen_friendly: true,
  elderly_friendly: true
  )


refugee.requests.create(
  amenity: refugee_needs,
  handicap_accessible: true,
  require_medical_attention: true,
  access_to_schools: true,
  organization_name: "Freedom House Detroit",
  organization_url: "https://www.freedomhousedetroit.org/",
  organization_contact_name: "Jenna Ritten",
  organization_contact_email: "info@freedomhousedetroit.org",
  organization_contact_phone: "(313) 964-4320",
  number_of_guests: 5,
  city: "Mansfield",
  state: "Ohio",
  country: "US",
  photo_url: "",
  completed_request: true
  )




