# The Triangle (https://www.acmicpc.net/problem/1932)
# 2022-05-15
# @j0dev


if __name__ == "__main__":
    num = int(input())
    result = []
    for i in range(num):
        result.append(list(map(int, input().split())))
        if i > 0:
            # 처음 하나 입력받고 시작
            for j in range(len(result[i])):
                if j == 0:
                    # 시작
                    result[i][j] += result[i - 1][j]
                elif j == i:
                    # 끝
                    result[i][j] += result[i - 1][j - 1]
                else:
                    # 중간
                    result[i][j] += max(result[i - 1][j], result[i - 1][j - 1])

    print(max(result[-1]))
