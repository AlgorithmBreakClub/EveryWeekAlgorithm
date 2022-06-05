var mergeTwoLists = function (list1, list2) {
	let l1 = list1;
	let l2 = list2;
	let ret = new ListNode();
	let temp = ret;
	while (l1 && l2) {
		if (l1.val === l2.val) {
			temp.next = l1;
			l1 = l1.next;
			temp = temp.next;
			temp.next = l2;
			l2 = l2.next;
		} else if (l1.val < l2.val) {
			temp.next = l1;
			l1 = l1.next;
		} else {
			temp.next = l2;
			l2 = l2.next;
		}
		temp = temp.next;
	}
	if (l1 || l2) {
		temp.next = l1 || l2;
	}
	return ret.next;
};
