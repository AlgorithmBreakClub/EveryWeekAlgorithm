import math
def solution(progresses, speeds):
    answer = []

    days_to_complete = [math.ceil( (100-progresses[i]) / speeds[i] ) for i in range(len(progresses))]
    while days_to_complete:
        num = days_to_complete[0]
        cnt = 0
        for d in days_to_complete:
            if d > num:
                break
            else:
                cnt = cnt + 1
        answer.append(cnt)
        days_to_complete = days_to_complete[cnt:len(days_to_complete)]
    return answer
