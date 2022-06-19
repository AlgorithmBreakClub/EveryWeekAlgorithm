# Merge-two-sorted-lists
# https://leetcode.com/problems/merge-two-sorted-lists/submissions/
# 2022-06-19
# j0dev

from typing import Optional

# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        # empty 처리
        if list1 is None:
            return list2

        if list2 is None:
            return list1

        # List Value 처리 (모든 리스트의 value는 정렬되어 있음.)
        if list1.val > list2.val:
            answer = ListNode(list2.val)
            answer.next = self.mergeTwoLists(list1, list2.next)
        else:
            answer = ListNode(list1.val)
            answer.next = self.mergeTwoLists(list1.next, list2)

        return answer
