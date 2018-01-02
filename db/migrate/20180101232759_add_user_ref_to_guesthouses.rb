class AddUserRefToGuesthouses < ActiveRecord::Migration
  def change
    add_reference :guesthouses, :user, index: true, foreign_key: true
  end
end
