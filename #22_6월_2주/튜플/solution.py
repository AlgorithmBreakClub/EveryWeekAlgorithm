# 튜플
# https://programmers.co.kr/learn/courses/30/lessons/64065
# 2022-06-19
# j0dev
import re
from collections import Counter


def solution(s):
    tmp = Counter(re.findall("\d+", s)).most_common()
    answer = [list(map(int, i))[0] for i in tmp]

    return answer


solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
