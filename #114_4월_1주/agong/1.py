import sys

count = int(sys.stdin.readline())

ropes = []
for c in range(1,count+1):
    ropes.append(int(sys.stdin.readline()))

ropes.sort()
max_weight = 0
for i, rope in enumerate(ropes):
    weight = (count - (i)) * rope 
    if weight > max_weight:
        max_weight = weight
print(max_weight)