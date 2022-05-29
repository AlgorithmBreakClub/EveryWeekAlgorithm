def solution(name):
    answer = 0
    move = len(name) - 1
    for i in range(len(name) - 1, -1, -1):
        if name[i] == "A":
            move -= 1
        else:
            break
    for i, c in enumerate(name):
        answer += min(ord(c) - ord("A"), ord("Z") - ord(c) + 1)
        ni = i + 1
        while ni < len(name) and name[ni] == "A":
            ni += 1
        move = min(move, 2 * i + len(name) - ni)
        move = min(move, (len(name) - ni) * 2 + i)
    answer += move
    
    if answer < 0:
        return 0
    
    return answer
