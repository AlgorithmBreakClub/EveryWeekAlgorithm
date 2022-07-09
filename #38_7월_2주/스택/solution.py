# 스택 (https://www.acmicpc.net/problem/2576)
# 2022-07-09
# @j0dev


from collections import deque
import sys

arr = []
N = int(sys.stdin.readline())

for i in range(N):
    arr_input = sys.stdin.readline().split()

    if arr_input[0] == "push":
        arr.append(arr_input[1])

    elif arr_input[0] == "pop":
        if not arr:
            print(-1)
        else:
            print(arr.pop())

    elif arr_input[0] == "size":
        print(len(arr))

    elif arr_input[0] == "empty":
        if not arr:
            print(1)
        else:
            print(0)

    elif arr_input[0] == "top":
        if not arr:
            print(-1)
        else:
            print(arr[-1])
