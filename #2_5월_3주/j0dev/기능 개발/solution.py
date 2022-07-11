# 기능개발 (https://programmers.co.kr/learn/courses/30/lessons/42586)
# 2022-05-15
# @j0dev

import math


def solution(progresses, speeds):
    task = []
    answer = []
    count = 1

    for i in range(len(progresses)):
        progress = progresses[i]
        speed = speeds[i]
        task.append(math.ceil((100 - progress) / speed))

    tmp = task[0]
    for i in range(len(task) - 1):
        if tmp < task[i + 1]:
            answer.append(count)
            count = 1
            tmp = task[i + 1]
        else:
            count += 1

    answer.append(count)

    return answer


# progresses = [93, 30, 55]
# speeds = [1, 30, 5]
# progresses = [95, 90, 99, 99, 80, 99]
# speeds = [1, 1, 1, 1, 1, 1]
# print(solution(progresses=progresses, speeds=speeds))
