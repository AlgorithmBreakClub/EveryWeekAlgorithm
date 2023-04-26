import sys

saved_size, find_size = map(int, input().split())
saved_password = {}
for _ in range(0,saved_size):
    site,password = map(str, sys.stdin.readline().split())
    saved_password[site] = password
for _ in range(0,find_size):
    site = sys.stdin.readline()
    print(saved_password[site.replace('\n','')])