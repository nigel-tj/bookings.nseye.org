class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room 
  def index
    @photos = Photo.where(room_id: @room.id)
  end

  def new
    @photo = @room.photos.new
  end

  def create

    @photo = @room.photos.build(photo_params)
    if @photo.save
      flash[:success] = "Photo saved!"
      redirect_to room_photos_path(@room.id)
    else
      render 'new'
    end
  end

  private
  
  def set_room
    @room = Room.find(params[:room_id])
  end
  def photo_params
    params.require(:photo).permit(:image, :title , :room_id)
  end
  
end