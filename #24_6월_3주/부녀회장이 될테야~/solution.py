# 부녀회장이 될테야
# https://www.acmicpc.net/problem/2775
# 2022-06-19 (기존에 백준 풀었던 문제라 코드 복붙)
# j0dev

if __name__ == "__main__":
    T = int(input())

    for i in range(T):
        k = int(input())  # floor
        n = int(input())  # room
        init = [a for a in range(1, n + 1)]
        for floor in range(k):
            for room in range(1, n):
                init[room] += init[room - 1]
        print(init[-1])
