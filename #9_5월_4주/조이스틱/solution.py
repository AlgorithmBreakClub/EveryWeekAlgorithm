# 기능개발 (https://programmers.co.kr/learn/courses/30/lessons/42860)
# 2022-05-29
# @j0dev


def solution(name):
    answer = 0
    min_op = len(name) - 1

    for i, letter in enumerate(name):
        answer += min(ord(letter) - ord("A"), ord("Z") - ord(letter) + 1)

        next = i + 1
        while next < len(name) and name[next] == "A":
            next += 1

        min_op = min(min_op, i + (i + len(name)) - next)

    answer += min_op

    return answer


print(solution(name="JAN"))
