class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.references :host, foreign_key: true
      t.references :amenity, foreign_key: true
      t.integer :property_type
      t.integer :listing_type
      t.integer :number_of_guests
      t.integer :number_of_bedrooms
      t.integer :number_of_beds
      t.integer :number_of_bathrooms
      t.integer :private
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
