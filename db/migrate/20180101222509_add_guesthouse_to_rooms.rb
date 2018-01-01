class AddGuesthouseToRooms < ActiveRecord::Migration
  def change
    add_reference :rooms, :guesthouse, index: true, foreign_key: true
  end
end
