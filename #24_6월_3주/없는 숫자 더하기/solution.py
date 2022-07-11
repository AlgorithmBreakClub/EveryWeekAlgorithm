# 없는 숫자 더하기
# https://programmers.co.kr/learn/courses/30/lessons/86051
# 2022-06-19
# j0dev


def solution(numbers):
    # 1 <= len(numbers) <= 9
    # 0 <= nubmers[i] <= 9
    # number[i] 는 모두 다름
    # 없는 숫자를 합친 결과를 내면 됨
    # 1에서 9를 더하면 45
    # 45 - sum(numbers)
    return 45 - sum(numbers)


solution([1, 2, 3, 4, 6, 7, 8, 0])
