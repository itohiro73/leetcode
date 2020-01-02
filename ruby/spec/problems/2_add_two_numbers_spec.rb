require "spec_helper"
require "problems/2_add_two_numbers"

def linked_list_to_array(list)
  array = [list.val]
  while list.next != nil do
    list = list.next
    array.push(list.val)
  end
  return array
end

describe "Add Two Numbers" do
  it "returns (7 -> 0 -> 8)" do
    l1 = ListNode.new(2)
    l1.next = ListNode.new(4)
    l1.next.next = ListNode.new(3)
    l2 = ListNode.new(5)
    l2.next = ListNode.new(6)
    l2.next.next = ListNode.new(4)
    output = ListNode.new(7)
    output.next = ListNode.new(0)
    output.next.next = ListNode.new(8)
    expect(linked_list_to_array(add_two_numbers(l1, l2))).to eq linked_list_to_array(output)
  end
end
