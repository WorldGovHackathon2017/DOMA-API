class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :refugee, foreign_key: true
      t.references :amenity, foreign_key: true
      t.integer :number_of_guests
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
