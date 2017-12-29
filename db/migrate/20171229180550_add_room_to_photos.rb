class AddRoomToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :room, index: true, foreign_key: true
  end
end
