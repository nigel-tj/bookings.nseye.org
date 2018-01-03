class RemoveAddressFromGuesthouse < ActiveRecord::Migration
  def change
    remove_column :guesthouses, :address, :string
  end
end
