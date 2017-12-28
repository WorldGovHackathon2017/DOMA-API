class CreateListingsRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :listings_requests do |t|
      t.references :listing, foreign_key: true
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
