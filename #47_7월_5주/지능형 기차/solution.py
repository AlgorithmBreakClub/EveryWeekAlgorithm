# 지능형 기차 (https://www.acmicpc.net/problem/2455)
# 2022-07-31
# @j0dev

max_person = 0
boarding = 0

for i in range(0, 4):
    N, M = map(int, input().split())
    boarding = boarding + M - N
    max_person = max(boarding, max_person)
    
    
print(max_person)