require "spec_helper"
require "problems/3_longest_substring_without_repeating_chars"

describe "Longest Substring Without Repeting Characters" do
  it "returns 3" do
    expect(length_of_longest_substring("abcabcbb")).to eq 3
  end
  it "returns 1" do
    expect(length_of_longest_substring("bbbbb")).to eq 1
  end
  it "returns 3" do
    expect(length_of_longest_substring("pwwkew")).to eq 3
  end
  it "returns 3" do
    expect(length_of_longest_substring("dvdf")).to eq 3
  end
  it "returns 7" do
    expect(length_of_longest_substring("bpfbhmipx")).to eq 7
  end
end
