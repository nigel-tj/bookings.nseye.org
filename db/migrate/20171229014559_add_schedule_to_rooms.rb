class AddScheduleToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :schedule, :text
  end
end
