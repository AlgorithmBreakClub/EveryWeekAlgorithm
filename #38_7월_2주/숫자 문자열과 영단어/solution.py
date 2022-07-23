# 숫자 문자열과 영단어 (https://school.programmers.co.kr/learn/courses/30/lessons/81301)
# 2022-07-09
# @j0dev


def solution(s):
    num_list = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    for index, num in enumerate(num_list):
        if num in num_list:
            s = s.replace(num, str(index))
    return int(s)


print(solution("one4seveneight"))
print(solution("23four5six7"))
print(solution("2three45sixseven"))
print(solution("123"))
