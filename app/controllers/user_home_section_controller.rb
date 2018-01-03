class UserHomeSectionController < ApplicationController
  
  def index
    @user_bookings = current_user.bookings
    @client = GooglePlaces::Client.new("AIzaSyAOCgJAr_KwHZvB-oi980QacwgBpBz_ZEw")
    @guesthouse_location = Guesthouse.first
    @places_feed = @client.spots(@guesthouse_location.latitude , @guesthouse_location.longitude)
  end
end
