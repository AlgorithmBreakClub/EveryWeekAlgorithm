# Add String (https://leetcode.com/problems/add-strings/)
# 2022-05-23
# @j0dev


class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        answer = []
        index = 0
        len_num1, len_num2 = len(num1), len(num2)
        while len_num1 or len_num2 or index:
            digit = index
            if len_num1:
                len_num1 -= 1
                digit += int(num1[len_num1])
            if len_num2:
                len_num2 -= 1
                digit += int(num2[len_num2])

            index = digit > 9
            answer.append(str(digit % 10))

        return "".join(answer[::-1])
