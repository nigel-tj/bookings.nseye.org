require "test_helper"

feature "Booking" do
  
  # all the data loaded
  let(:john) {users(:user)}
  let(:nigel) {users(:admin)}
  let(:chingy) {users(:receptionist)}
  let(:booked_room) {rooms(:suite)}
  let(:standard_room){rooms(:standard)}

  scenario "john should be able to visit the home page and book see all the open rooms " do
    visit root_path
    within "#room_display" do 
      Room.all.each do | room|
        assert_content room.name
        assert_content room.number
        assert_content room.price
        assert_content room.status
      end
    end
    
  end
  
  scenario "John should be able to book a standard room from the home page" do 
    visit root_path
    within "#id_#{standard_room.id}" do
      click_button "Book Now"
    end
    simple_login_as john
    fill_in "Guest name"
    
    # the booking ranges
    
    # The beginning of the booking
    select '2018' , from: 'booking_occurrence_1i'
    select 'february' , from: 'booking_occurrence_2i'
    select '15' , from: 'booking_occurrence_3i'
    
    # the ending of the booking 
    select '2018' , from: 'booking_closure_1i'
    select 'march' , from: 'booking_closure_2i'
    select '15' , from: 'booking_closure_3i'
    
    click_button "Book Now"
    
    assert_content "The booking has been made"
  end
  
  scenario "chingy should be able to see all the bookings made  from the home page" do
    visit root_path
    within "#booking_made" do 
      assert_content booked_room.name
      assert_content booked_room.begn
    end
  end
end
