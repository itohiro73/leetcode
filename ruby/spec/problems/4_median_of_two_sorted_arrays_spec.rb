require "spec_helper"
require "problems/4_median_of_two_sorted_arrays"

describe "Median of Two Sorted Arrays" do
  it "returns 1.5" do
    expect(find_median_sorted_arrays([1], [2])).to eq 1.5 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([1, 3], [2])).to eq 2.0 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([1, 2], [3])).to eq 2.0 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([2, 3], [1])).to eq 2.0 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([2], [1, 3])).to eq 2.0 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([3], [1, 2])).to eq 2.0 
  end
  it "returns 2.0" do
    expect(find_median_sorted_arrays([1], [2, 3])).to eq 2.0 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1, 2], [3, 4])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1, 3], [2, 4])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([3, 4], [1, 2])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([2, 4], [1, 3])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1], [2, 3, 4])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([2], [1, 3, 4])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([3], [1, 2, 4])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([4], [1, 2, 3])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([2, 3, 4], [1])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1, 3, 4], [2])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1, 2, 4], [3])).to eq 2.5 
  end
  it "returns 2.5" do
    expect(find_median_sorted_arrays([1, 2, 3], [4])).to eq 2.5 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1], [2, 3, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2], [1, 3, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([3], [1, 2, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([4], [1, 2, 3, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([5], [1, 2, 3, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 3, 4, 5], [1])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 3, 4, 5], [2])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 4, 5], [3])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 3, 5], [4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 3, 4], [5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2], [3, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 3], [2, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 4], [2, 3, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 5], [2, 3, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 3], [1, 4, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 4], [1, 3, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 5], [1, 3, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([3, 4], [1, 2, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([3, 5], [1, 2, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([4, 5], [1, 2, 3])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([3, 4, 5], [1, 2])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 4, 5], [1, 3])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 3, 5], [1, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([2, 3, 4], [1, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 4, 5], [2, 3])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 3, 5], [2, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 3, 4], [2, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 5], [3, 4])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 4], [3, 5])).to eq 3 
  end
  it "returns 3" do
    expect(find_median_sorted_arrays([1, 2, 3], [4, 5])).to eq 3 
  end
  it "returns 3.5" do
    expect(find_median_sorted_arrays([1, 2, 3], [4, 5, 6])).to eq 3.5 
  end
  it "returns 3.5" do
    expect(find_median_sorted_arrays([4, 5, 6], [1, 2, 3])).to eq 3.5 
  end
end
