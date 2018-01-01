require "test_helper"

describe Guesthouse do
  let(:guesthouse) { Guesthouse.new }

  it "must be valid" do
    value(guesthouse).must_be :valid?
  end
end
