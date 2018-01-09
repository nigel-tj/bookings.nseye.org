class BookingController < ApplicationController
  before_action :authenticate_user!
  layout "front_end", only: [:new]
  
  def index
    @user_bookings = current_user.bookings
    
  end
  def new
    @room = Room.find(params[:room_id])
    @current_user = current_user
  end

  def create
    @room = Room.find(params[:room_id])

    # This room is available every week, on weekends
    #@room.schedule.add_recurrence_rule IceCube::Rule.weekly.day(:friday,:saturday,:sunday)
    #@room.save!
    
    check_in_ok = Date.strptime(params[:check_in], "%m/%d/%Y") #Date.today.next_week + 4.days
    check_out_ok = Date.strptime(params[:check_out], "%m/%d/%Y")
        
    current_user.book! @room 
    
    redirect_to user_home_section_index_path
  end
end

def booking_params
  params.require(:room).permit!
end
