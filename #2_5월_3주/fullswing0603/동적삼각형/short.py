n=int(input());d=[list(map(int,input().split()))for _ in range(n)]
for i in range(1,n):
    for j in range(i+1):
        d[i][j]=d[i][j]+d[i-1][j] if j==0 else d[i][j]+d[i-1][j-1] if j==i else max(d[i-1][j-1],d[i-1][j])+d[i][j]
print(max(d[n-1]))
