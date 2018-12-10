class UserHomeSectionController < ApplicationController
  
  def index
    @user_bookings = current_user.bookings
    #@client = GooglePlaces::Client.new("AIzaSyAp7ApfVDDjp3XhROxBBvW9woeESo_a_Ao")
    @guesthouse_location = Guesthouse.first
    #@places_feed = @client.spots(@guesthouse_location.latitude , @guesthouse_location.longitude)
  end
end
