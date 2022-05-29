class Solution(object):
    def addStrings(self, num1, num2):
        """
        :type num1: str
        :type num2: str
        :rtype: str
        """
        if len(num1) > len(num2):
            num2 = (len(num1) - len(num2))*"0" + num2
        else:
            num1 = (len(num2) - len(num1))*"0" + num1
            
        carry = 0
        answer = ""
        for (a,b) in zip(num1[::-1],num2[::-1]):
            sum = int(a) + int(b) + carry
            answer = str(sum)[-1] + answer
            if carry == 1:
                carry = 0 
            if sum > 9:
                carry = 1
        if carry == 1:
            answer = "1" + answer
        return answer