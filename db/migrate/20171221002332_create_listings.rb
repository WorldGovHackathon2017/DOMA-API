class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.references :host, foreign_key: true
      t.references :amenity, foreign_key: true
      t.boolean :handicap_accessible, default: false
      t.boolean :provide_medical_attention, default: false
      t.boolean :access_to_schools, default: false
      t.integer :property_type
      t.integer :listing_type
      t.integer :number_of_guests
      t.integer :number_of_bedrooms
      t.integer :number_of_beds
      t.integer :number_of_bathrooms
      t.boolean :private, default: false
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :photo_1_url
      t.string :photo_2_url
      t.string :photo_3_url
      t.boolean :completed_listing, default: false

      t.timestamps
    end
  end
end
