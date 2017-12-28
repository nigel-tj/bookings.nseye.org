class BookingController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user_bookings = current_user.bookings
  end
  def new
  end

  def create
    room = params[:room_id]
    current_user.book! room
    redirect_to booking_index_path
  end
end
