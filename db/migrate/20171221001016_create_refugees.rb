class CreateRefugees < ActiveRecord::Migration[5.1]
  def change
    create_table :refugees do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :phone_number
      t.string :social_media_url
      t.string :native_language
      t.string :spoken_languages
      t.string :home_city
      t.string :home_country
      t.string :organization_name
      t.string :organization_url
      t.string :organization_contact_name
      t.string :organization_contact_email
      t.string :organization_contact_phone
      t.string :current_city
      t.string :current_state
      t.string :current_country
      t.string :photo_url
      t.boolean :completed_registration, default: false

      t.timestamps
    end
  end
end
