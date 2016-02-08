require "test_helper"

describe Round do
  let(:round) { Round.new }

  it "must be valid" do
    value(round).must_be :valid?
  end
end
