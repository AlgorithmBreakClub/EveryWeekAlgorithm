import sys

def solution(nums):
    num_list = nums.split(" ")
    num_list = [int(i) for i in num_list]

    remove_dup = set(num_list)
    if(len(remove_dup) == 3):
        print(max(remove_dup) * 100)
    elif(len(remove_dup) == 2):
        for i in remove_dup:
            num_list.remove(i)
        print(num_list.pop() * 100 + 1000)
    else:
        print(remove_dup.pop() * 1000 + 10000)

nums = sys.stdin.readline()
solution(nums)