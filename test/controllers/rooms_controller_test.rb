require "test_helper"

describe RoomsController do
  let(:room) { rooms :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:rooms)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates room" do
    expect {
      post :create, room: { name: room.name, number: room.number }
    }.must_change "Room.count"

    must_redirect_to room_path(assigns(:room))
  end

  it "shows room" do
    get :show, id: room
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: room
    value(response).must_be :success?
  end

  it "updates room" do
    put :update, id: room, room: { name: room.name, number: room.number }
    must_redirect_to room_path(assigns(:room))
  end

  it "destroys room" do
    expect {
      delete :destroy, id: room
    }.must_change "Room.count", -1

    must_redirect_to rooms_path
  end
end
