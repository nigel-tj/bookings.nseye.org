class CreateGuesthouses < ActiveRecord::Migration
  def change
    create_table :guesthouses do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
