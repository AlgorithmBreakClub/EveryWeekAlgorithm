import sys

sumup = int(sys.stdin.readline())
cnt = 1
while True:
    if sumup == cnt * (cnt+1) // 2:
        print(cnt)
        break
    elif sumup < cnt * (cnt+1) // 2:
        print(cnt-1)
        break
    cnt +=  1
