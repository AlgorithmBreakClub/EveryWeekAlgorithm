# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next


class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        head = ListNode(0)
        cursor = head

        while (list1 and list2):
            if (list1.val < list2.val):
                cursor.next = list1
                list1 = list1.next
            else:
                cursor.next = list2
                list2 = list2.next

            cursor = cursor.next

        cursor.next = list1 or list2
        return head.next
