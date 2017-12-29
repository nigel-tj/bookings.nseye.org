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

    # check-in Friday, check-out Sunday
    check_in_ok = Date.today.next_week + 4.days
    check_out_ok = check_in_ok + 2.days
        
    current_user.book! @room #, time_start: check_in_ok, time_end: check_out_ok
    redirect_to booking_index_path
  end
end

def booking_params
  params.require(:room).permit(:room_id)
end
