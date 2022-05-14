class LinkedList:
    class Node:
        def __init__(self, num, prev):
            self.num = num
            self.prev = prev
            self.next = None

    def __init__(self, num, cursor_point):
        self.root = self.Node(0, None)
        self.cursor = None
        self.deleted = []

        root = self.root
        for i in range(1, num):
            new_node = self.Node(i, root)
            root.next = new_node
            if i == cursor_point:
                self.cursor = new_node
            root = new_node

    def up(self, num):
        for _ in range(int(num)):
            if self.cursor.prev:
                self.cursor = self.cursor.prev

    def down(self, num):
        for _ in range(int(num)):
            if self.cursor.next:
                self.cursor = self.cursor.next

    def delete(self):
        target_node = self.cursor
        self.deleted.append(target_node)
        if target_node.next:
            if target_node == self.root:
                self.root = target_node.next

            self.cursor = target_node.next
            self.cursor.prev = target_node.prev

            if target_node.prev:
                target_node.prev.next = self.cursor
        else:
            self.cursor = target_node.prev
            self.cursor.next = None

    def undo(self):
        deleted_node = self.deleted.pop()

        if deleted_node.prev:
            deleted_node.prev.next = deleted_node

        if deleted_node.next:
            deleted_node.next.prev = deleted_node
            if deleted_node.next == self.root:
                self.root = deleted_node


def solution(n, k, cmd):
    table = LinkedList(n, k)
    for c in cmd:
        if c[0] == "U":
            num = c.split(" ")[1]
            table.up(num)
        elif c[0] == "D":
            num = c.split(" ")[1]
            table.down(num)
        elif c[0] == "C":
            table.delete()
        elif c[0] == "Z":
            table.undo()

    node = table.root

    answer = ["X"] * n

    while node:
        answer[node.num] = "O"
        node = node.next

    return "".join(answer)
