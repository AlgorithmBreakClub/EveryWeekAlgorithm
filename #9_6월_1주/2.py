def solution(n, k, cmd):
    class Node:
        def __init__(self):
            self.prev = None # 이전 노드 인덱스
            self.next = None # 다음 노드 인덱스
            self.is_delete = False # 삭제 여부

    node_list = [Node() for _ in range(n)]
    for i in range(n - 1):
        node_list[i].next = i + 1
        node_list[i + 1].prev = i 
    
    cur = k
    deleted = []
    for c in cmd:

        if len(c) > 1:
            c, move_size = c.split(' ')
            move_size = int(move_size)

        if c == "D":
            for i in range(move_size):
                cur = node_list[cur].next
        elif c == "U":
            for i in range(move_size):
                cur = node_list[cur].prev 
        elif c == "C":
            node_list[cur].is_delete = True
            deleted.append(cur)
 
            prev_node = node_list[cur].prev
            next_node = node_list[cur].next
  
            if prev_node: #이전노드가 있으면 이전노드의 다음을 현재의 다음에 연결
                node_list[prev_node].next = next_node 
            if next_node: #다음노드가 있으면 다음노드의 이전을 현재의 이전에 연결
                node_list[next_node].prev = prev_node
                cur = next_node
            else: #마지막 노드일경우 이전노드가 현재의 노드가 된다
                cur = prev_node
        else:
            del_node = deleted.pop() # stack의 가장 상위 요소를 가져옴
            node_list[del_node].is_delete = False # 해당 노드의 is_delete = False로 변경
 
            prev_node = node_list[del_node].prev
            next_node = node_list[del_node].next
 
            if prev_node:
                node_list[prev_node].next = del_node
            if next_node:
                node_list[next_node].prev = del_node 
            
    answer = ""
    for i in range(n):
        if node_list[i].is_delete: 
            answer += "X"
        else:
            answer += "O"
    return answer

print(solution(8,2,["D 2","C","U 3","C","D 4","C","U 2","Z","Z","U 1","C"]))