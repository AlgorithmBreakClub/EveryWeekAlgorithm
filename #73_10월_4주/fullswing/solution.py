def solution(s):
    input_list = sorted(map(int, s.split(" ")))

    return f"{input_list[0]} {input_list[-1]}"
