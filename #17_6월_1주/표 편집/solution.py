# 표 편집
# https://programmers.co.kr/learn/courses/30/lessons/81303
## 2022-06-19
# j0dev
# 정확성 실패 2개, 효율성 실패 2개
# TODO:: 차주 수정 예정


def solution(n, k, cmd):
    answer = ["O" for _ in range(n)]
    l_list = {i: [i - 1, i + 1] for i in range(n)}
    # {0: [-1, 1], 1: [0, 2], 2: [1,3] ... n: [n-1, n+1]}
    # index: prev, next
    tmp = []
    for command in cmd:
        if len(command) > 2:
            C, X = command.split(" ")
            if C == "U":
                # prev 로 X 번 이동
                for _ in range(int(X)):
                    k = l_list[k][0]

            else:
                # next 로 X 번 이동
                for _ in range(int(X)):
                    k = l_list[k][1]
        else:
            if command == "C":
                prev, next = l_list[k][0], l_list[k][1]
                answer[k] = "X"
                tmp.append({k: [prev, next]})
                if prev == -1:
                    l_list[next][0] = prev
                    k = next
                elif next == n:
                    l_list[prev][1] == next
                    k = prev
                else:
                    l_list[prev][1] = next
                    l_list[next][0] = prev
                    k = next

            else:
                test = tmp.pop()
                idx = list(test.keys())[0]
                prev = test[idx][0]
                next = test[idx][1]
                answer[idx] = "O"
                l_list[idx][0] = prev
                l_list[idx][1] = next
                if prev == -1:
                    l_list[next][0] = idx
                elif next >= n:
                    l_list[prev][1] = idx
                else:
                    l_list[prev][1] = idx
                    l_list[next][0] = idx

    return "".join(answer)


solution(8, 2, ["D 2", "C", "U 3", "C", "D 4", "C", "U 2", "Z", "Z"])
