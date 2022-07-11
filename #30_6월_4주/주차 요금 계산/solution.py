# 주차 요금 계산
# https://programmers.co.kr/learn/courses/30/lessons/92341
# 2022-06-24
# j0dev

import math


def calc_fees(time, fee):
    # fee: [기본 시간(분), 기본 요금(원), 단위 시간(분), 단위 요금(원)]
    # fee [1, 461, 1, 10]
    # time 1439
    # 461 +⌈(1439 - 1) / 1⌉x 10 = 14841

    return fee[1] + math.ceil(max(0, (time - fee[0])) / fee[2]) * fee[3]


def get_time(date):
    hour, minute = date.split(":")
    return int(hour) * 60 + int(minute)


def solution(fees, records):
    answer = []
    parkIn = dict()
    parkOut = dict()
    for record in records:
        date, car, status = record.split()
        time = get_time(date)

        if status == "IN":
            parkIn[car] = time

        elif status == "OUT":
            try:
                parkOut[car] += time - parkIn[car]
            except:
                parkOut[car] = time - parkIn[car]
            del parkIn[car]

    for park in parkIn:
        try:
            parkOut[park] += get_time("23:59") - parkIn[park]
        except:
            parkOut[park] = get_time("23:59") - parkIn[park]

    parkOut = sorted(parkOut.items())
    answer = [calc_fees(item[1], fees) for item in parkOut]
    return answer


print(
    solution(
        [180, 5000, 10, 600],
        [
            "05:34 5961 IN",
            "06:00 0000 IN",
            "06:34 0000 OUT",
            "07:59 5961 OUT",
            "07:59 0148 IN",
            "18:59 0000 IN",
            "19:09 0148 OUT",
            "22:59 5961 IN",
            "23:00 5961 OUT",
        ],
    )
)
