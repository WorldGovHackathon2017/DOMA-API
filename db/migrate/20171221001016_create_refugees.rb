class CreateRefugees < ActiveRecord::Migration[5.1]
  def change
    create_table :refugees do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :phone_number
      t.string :city
      t.string :state
      t.string :country
      t.boolean :completed_registration, default: false

      t.timestamps
    end
  end
end
