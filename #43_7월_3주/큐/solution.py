# 큐 (https://www.acmicpc.net/problem/10845)
# 2022-07-31
# @j0dev

from collections import deque
import sys

dq = deque([])
N = int(sys.stdin.readline())

for i in range(N):
    arr_input = sys.stdin.readline().split()

    if arr_input[0] == "push":
        dq.append(arr_input[1])

    elif arr_input[0] == "pop":
        if not dq:
            print(-1)
        else:
            print(dq.popleft())

    elif arr_input[0] == "size":
        print(len(dq))

    elif arr_input[0] == "empty":
        if not dq:
            print(1)
        else:
            print(0)

    elif arr_input[0] == "front":
        if not dq:
            print(-1)
        else:
            print(dq[0])

    elif arr_input[0] == "back":
        if not dq:
            print(-1)
        else:
            print(dq[-1])

