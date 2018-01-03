class AddGeocoderToGuesthouses < ActiveRecord::Migration
  def change
    add_column :guesthouses, :address, :text
    add_column :guesthouses, :latitude, :float
    add_column :guesthouses, :longitude, :float
  end
end
