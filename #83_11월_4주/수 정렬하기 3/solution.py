# 수 정렬하기 3 (https://www.acmicpc.net/problem/10989)
# 2022-11-21
# @j0dev

import sys

N = int(input())
N_List = [0] * 10001


for i in range(N):
    num = int(sys.stdin.readline())
    N_List[num] += 1


for i in range(10001):
    if N_List[i] != 0:
        for j in range(0, N_List[i]):
            print(i)