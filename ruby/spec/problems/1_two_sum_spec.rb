require "spec_helper"
require "problems/1_two_sum"

describe "Two Sum" do
  it "returns [0, 1]" do
    expect(two_sum([2, 7, 11, 15], 9)).to eq [0, 1] 
  end
end
