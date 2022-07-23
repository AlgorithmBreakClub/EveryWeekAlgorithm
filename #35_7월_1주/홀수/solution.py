# 홀수 (https://www.acmicpc.net/problem/2576)
# 2022-07-09
# @j0dev


if __name__ == "__main__":
    numbers = []

    for i in range(7):
        num = int(input())

        if num % 2 != 0:
            numbers.append(num)

    if numbers:
        print(sum(numbers))
        print(min(numbers))

    else:
        print(-1)
