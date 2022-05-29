class Solution:
    def addStrings(self, num1, num2):
        carry = 0
        result = ''

        num1 = list(num1)
        num2 = list(num2)

        while (num1 or num2 or carry):
            num1_digit = num1.pop() if num1 else "0"
            num2_digit = num2.pop() if num2 else "0"

            sum = int(num1_digit) + int(num2_digit) + carry

            if sum >= 10:
                sum -= 10
                carry = 1
            else:
                carry = 0

            result += str(sum)

        return result[::-1]
