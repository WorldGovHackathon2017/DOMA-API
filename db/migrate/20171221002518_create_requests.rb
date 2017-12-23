class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :refugee, foreign_key: true
      t.references :amenity, foreign_key: true
      t.boolean :handicap_accessible, default: false
      t.boolean :require_medical_attention, default: false
      t.boolean :access_to_schools, default: false
      t.integer :number_of_guests
      t.string :city
      t.string :state
      t.string :country
      t.string :photo_url

      t.timestamps
    end
  end
end
