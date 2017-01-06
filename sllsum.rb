 #Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
	def initialize(val)
        @val = val
        @next = nil
    end
end

print ListNode.new(2).inspect


# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
