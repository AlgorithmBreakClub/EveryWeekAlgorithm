# 음양 더하기 (https://school.programmers.co.kr/learn/courses/30/lessons/76501)
# 2022-07-31
# @j0dev

def solution(absolutes, signs):
    answer = 0
    
    for i in range(len(absolutes)):
        num = int(absolutes[i])
        
        if not signs[i]:
            num *= -1
        
        answer += num
        
    return answer

    
    
print(solution([4,7,12], [True, False, True]))
print(solution([1,2,3], [False, False, True]))