class CreateAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :amenities do |t|
      t.boolean :heat
      t.boolean :air_conditioning
      t.boolean :washer
      t.boolean :dryer
      t.integer :closets
      t.integer :drawers
      t.boolean :wifi
      t.boolean :computer
      t.boolean :phone
      t.boolean :tv
      t.integer :bikes
      t.boolean :transportation
      t.boolean :pets_allowed
      t.boolean :baby_friendly
      t.boolean :toddler_friendly
      t.boolean :child_friendly

      t.timestamps
    end
  end
end
