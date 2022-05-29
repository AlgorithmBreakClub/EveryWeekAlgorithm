def solution(name):
    # A만 있는경우 0
    if set(name) == {'A'}:
        return 0
    answer = float("inf")
    for i in range(len(name) // 2): 
        # i가 0일때 한방향으로 쭉가는거 계산됨 
        # 이후는 한쪽방향으로 왔다가 되돌아가는것 계산
        left_moved = name[-i:]+name[:-i]
        right_moved = name[i:]+name[:i]
        for n in [left_moved, right_moved[0]+right_moved[:0:-1]]:
            #끝자리가 A면 더 갈필요없으므로 빼줌 
            while n and n[-1] == 'A':
                n = n[:-1]
            horizontal_move = i + len(n)-1
            vertical_move = 0
            for c in map(ord, n):
                vertical_move += min(c - 65, 91 - c)
            answer = min(answer, horizontal_move + vertical_move)
    return answer