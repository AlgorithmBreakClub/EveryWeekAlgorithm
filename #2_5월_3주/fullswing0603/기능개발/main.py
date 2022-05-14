"""
https://programmers.co.kr/learn/courses/30/lessons/42586
"""


def is_finished(proccess, speed, time):
    return proccess + (time * speed) >= 100


def solution(progresses, speeds):
    answer = []
    time = 0  # 경과한 시간
    count = 0  # 배포한 횟수

    while True:
        if is_finished(progresses[0], speeds[0], time):
            # 작업이 종료되었으므로 배포 count 증가
            count += 1

            # 작업이 종료되었으므로 해당 proccess, speed 삭제
            del progresses[0]
            del speeds[0]

            # 더이상 처리할 작업이 없다면 현재 count를 담고 종료
            if not progresses:
                answer.append(count)
                break

            continue

        # 1개 이상 배포가 되었다면 answer에 담고 count 초기화
        if count:
            answer.append(count)
            count = 0
            continue

        # 배포된 것이 없다면 열심히 작업을 한다
        time += 1

    return answer
