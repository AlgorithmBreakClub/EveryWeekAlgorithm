from solution import Solution

test_case = [{"num1": "11", "num2": "123"}, {"num1": "456", "num2": "123"}, {"num1": "0", "num2": "0"}]

for i in range(0, 3):
    print(Solution().addStrings(num1=test_case[i]["num1"], num2=test_case[i]["num2"]))
