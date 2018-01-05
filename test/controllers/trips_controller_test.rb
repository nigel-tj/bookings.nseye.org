require "test_helper"

describe TripsController do
  it "should get index" do
    get :index
    value(response).must_be :success?
  end

  it "should get new" do
    get :new
    value(response).must_be :success?
  end

end
