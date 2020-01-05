require "spec_helper"
require "problems/5_longest_palindromic_substring"

describe "Longest Palindromic Substring" do
  it "returns bab" do
    expect(longest_palindrome("babad")).to eq "bab" 
  end
  it "returns ccc" do
    expect(longest_palindrome("ccc")).to eq "ccc" 
  end
  it "returns cccc" do
    expect(longest_palindrome("cccc")).to eq "cccc" 
  end
end
