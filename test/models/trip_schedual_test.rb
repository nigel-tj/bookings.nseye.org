require "test_helper"

describe TripSchedual do
  let(:trip_schedual) { TripSchedual.new }

  it "must be valid" do
    value(trip_schedual).must_be :valid?
  end
end
