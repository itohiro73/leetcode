# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    current_digit = 10
    l1_digit = l1.val
    l2_digit = l2.val
    while l1.next!=nil do
        l1 = l1.next
        l1_digit = l1_digit + l1.val * current_digit
        current_digit = current_digit * 10
    end
    current_digit = 10
    while l2.next!=nil do
        l2 = l2.next
        l2_digit = l2_digit + l2.val * current_digit
        current_digit = current_digit * 10
    end
    output_digit = l1_digit + l2_digit
    output = ListNode.new(output_digit % 10)
    iterating_output = output
    output_digit = output_digit / 10
    while (output_digit != 0) do
        iterating_output.next = ListNode.new(output_digit % 10)   
        output_digit = output_digit / 10
        iterating_output = iterating_output.next
    end
    return output
end
