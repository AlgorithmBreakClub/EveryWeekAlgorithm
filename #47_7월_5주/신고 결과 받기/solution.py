# 신고 결과 받기 (https://school.programmers.co.kr/learn/courses/30/lessons/92334)
# 2022-07-31
# @j0dev


from collections import defaultdict


def solution(id_list, report, k):
    answer = []
    report_list = defaultdict(list)
    report_count = defaultdict(int)
    
    for i in range(len(report)):
        reporter, target = report[i].split()
        
        if target not in report_list[reporter]:
            report_list[reporter].append(target)
            report_count[target] += 1
            
    for user in id_list:
        cnt = 0
        for i in report_list[user]:
            if report_count[i] >= k:
                cnt += 1
        
        answer.append(cnt)
        
    return answer
        

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))