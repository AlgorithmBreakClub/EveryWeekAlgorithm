# 알고리즘 수업 - 피보나치 수 1 (https://www.acmicpc.net/problem/24416)
# 2022-07-31
# @j0dev

def fib(n):
    if n == 1 or n == 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)
    
def fibonacci(n):
    f = [0] * (n+1)
    f[1], f[2] = 1, 1
    cnt = 0
    for i in range (3, n+1):
        cnt += 1
        f[i] = f[i-1] + f[i-2]
    return cnt

N = int(input())
print(fib(N), fibonacci(N))