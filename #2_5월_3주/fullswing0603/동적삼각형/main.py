"""
https://www.acmicpc.net/problem/1932
"""

n = int(input())
triangle = [[0 for _ in range(n+1)] for __ in range(n+1)]
dp = [[0 for _ in range(n+1)] for __ in range(n+1)]

for i in range(1, n+1):  # input값으로 2차원 배열 triangle을 채움
    tmp = list(map(int, input().split()))
    for j in range(1, i+1):
        triangle[i][j] = tmp[j-1]
        
for i in range(1, n+1):  # 뻗어나갈 수 있는 2개의 경로 중 큰 값을 선택하며 dp를 채움
    for j in range(1, n+1):
        dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + triangle[i][j] 

print(max(dp[-1]))

