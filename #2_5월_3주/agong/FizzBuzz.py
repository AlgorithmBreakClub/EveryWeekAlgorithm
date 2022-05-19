class Solution(object):
    def fizzBuzz(self, n):
        """
        :type n: int
        :rtype: List[str]
        """
        answer = []
        for n in range(1,n+1):
            if n%3 == 0 and n%5 == 0:
                x = "FizzBuzz"
            elif n%3 == 0:
                x = "Fizz"
            elif n%5 == 0:
                x = "Buzz"
            else:
                x = str(n)
            answer.append(x)
            
        return answer
