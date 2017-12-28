class BookingController < ApplicationController
  before_action :authenticate_user!
  layout "front_end", only: [:new]
  
  def index
    @user_bookings = current_user.bookings
  end
  def new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    puts @room.number
    current_user.book! @room
    redirect_to booking_index_path
  end
end

def booking_params
  params.require(:room).permit(:room_id)
end
