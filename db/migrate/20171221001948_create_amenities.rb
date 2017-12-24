class CreateAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :amenities do |t|
      t.boolean :heat, default: false
      t.boolean :air_conditioning, default: false
      t.boolean :washer, default: false
      t.boolean :dryer, default: false
      t.integer :closets, default: 0
      t.integer :drawers, default: 0
      t.boolean :wifi, default: false
      t.boolean :computer, default: false
      t.boolean :phone, default: false
      t.boolean :tv, default: false
      t.integer :bikes, default: 0
      t.boolean :transportation, default: false
      t.boolean :pet_friendly, default: false
      t.boolean :family_friendly, default: false
      t.boolean :baby_friendly, default: false
      t.boolean :toddler_friendly, default: false
      t.boolean :child_friendly, default: false
      t.boolean :teen_friendly, default: false
      t.boolean :elderly_friendly, default: false

      t.timestamps
    end
  end
end
