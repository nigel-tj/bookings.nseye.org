class VisitorsController < ApplicationController
  layout "front_end"

  def index
    @rooms = Room.all
  end
end
