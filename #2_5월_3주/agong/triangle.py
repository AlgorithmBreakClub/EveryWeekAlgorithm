import sys

lines = int(sys.stdin.readline())
_input =[]
for i in range(lines):
    _input.append(list(map(int, sys.stdin.readline().split())))
answer = []
for i, line in enumerate(_input):
    if i > 0:
        line_b4 = _input[i-1]
    else:
        continue
    for j, item in enumerate(line):
        if j == 0:
            _input[i][j] = item + line_b4[0]
        elif j+1 == len(line):
            _input[i][j] = item + line_b4[j-1]
        else:
            _input[i][j] = max( (item + line_b4[j-1]), (item + line_b4[j]) )
    
answer = max(_input.pop())
print(answer)