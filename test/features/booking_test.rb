require "test_helper"

feature "Booking" do
  
  # all the data loaded
  let(:john) {users(:john)}

  scenario "john should be able to visit the home page and book see all the open rooms " do
    visit root_path
    rooms.each do | room|
      assert_content room.name
      assert_content room.number
      assert_content room.price
      assert_content room.status
    end
    
  end
end
