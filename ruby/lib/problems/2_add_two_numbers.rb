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
    carry = (l1.val + l2.val) / 10
    output = ListNode.new((l1.val + l2.val) % 10)
    node = output
    while (l1 != nil && l1.next != nil) || (l2 != nil && l2.next != nil) || carry != 0 do
        l1_next = l1 == nil ? nil : l1.next
        l2_next = l2 == nil ? nil : l2.next
        l1_val = l1_next == nil ? 0 : (l1_next.val == nil ? 0 : l1_next.val)
        l2_val = l2_next == nil ? 0 : (l2_next.val == nil ? 0 : l2_next.val)
        node.next = ListNode.new((l1_val + l2_val + carry) % 10)
        carry = (l1_val + l2_val + carry) / 10
        node = node.next
        l1 = l1 == nil ? nil : l1.next
        l2 = l2 == nil ? nil : l2.next
    end
    return output
end
