class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :booking_id

      t.timestamps null: false
    end
  end
end
