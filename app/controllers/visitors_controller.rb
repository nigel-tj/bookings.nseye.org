class VisitorsController < ApplicationController
  layout "front_end"

  def index
    @rooms = Room.all
  end
  def contact
  end
  def about
  end
  def tours
  end
end
