class AddPriceToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :price, :double
    add_column :rooms, :status, :integer
  end
end
