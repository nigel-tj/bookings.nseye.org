class GuesthousesController < ApplicationController
  before_action :authenticate_user!
  def index
    @guesthouses = Guesthouse.where(user_id: current_user.id)
  end

  def new
    @guesthouse = Guesthouse.new
  end
  
  def create
    @guesthouse = Guesthouse.new(guesthouse_params)
    @guesthouse.user_id = current_user.id
    if @guesthouse.save
      flash[:notice] = "Guest House added"
      redirect_to new_guesthouse_room_path(@guesthouse.id)
    else
      render 'new'
    end
  end
  
  private
  def guesthouse_params
    params.require(:guesthouse).permit(:name , :address , :user_id)
    
  end
end
