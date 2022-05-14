class Solution:
    def fizzBuzz(self, n):
        return [i%15==0 and "FizzBuzz" or i%3==0 and "Fizz" or i%5==0 and "Buzz" or str(i) for i in range(1, n+1)]
