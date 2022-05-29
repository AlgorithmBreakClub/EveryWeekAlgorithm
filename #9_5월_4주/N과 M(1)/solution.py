# N과 M (1) (https://www.acmicpc.net/problem/15649)
# 2022-05-29
# @j0dev


def solution(visit, N, M):
    if len(visit) == M:
        print(" ".join(list(map(str, visit))))
    else:
        for i in range(1, N + 1):
            if i not in visit:
                visit.append(i)
                solution(visit, N, M)
                visit.pop()


N, M = map(int, input().split())
visit = []
solution(visit, N, M)
