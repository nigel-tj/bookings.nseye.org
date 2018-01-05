class CreateTripScheduals < ActiveRecord::Migration
  def change
    create_table :trip_scheduals do |t|
      t.references :trip, index: true, foreign_key: true
      t.float :start_latitude
      t.float :start_longitude
      t.float :end_latitude
      t.float :end_longitude

      t.timestamps null: false
    end
  end
end
