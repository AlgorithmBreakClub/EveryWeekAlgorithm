import collections
import math

def solution(fees, records):
    default_time = fees[0]
    default_fee = fees[1]
    time_block = fees[2]
    fee_block = fees[3]

    def to_minute(time):
        return int(time[0]) * 60 + int(time[1])

    def calc_fee(charge_time):
        if charge_time < default_time:
            return default_fee
        time_fee = math.ceil((charge_time - default_time) / time_block)
        return default_fee + ( time_fee * fee_block )

    # 번호 : (입차, 누적시간) 형태로 저장
    calc = {}

    for item in records:
        r = item.split(" ")

        car_num = r[1]
        #입차기록이 있다면 
        if r[2] == 'OUT':
            (in_t, total_minutes) = calc[car_num]
            out_time = to_minute(r[0].split(":"))
            in_time = to_minute(in_t.split(":"))
            charge_time = out_time - in_time
            
            calc[car_num] = (None, total_minutes + charge_time) if total_minutes else (None,charge_time)
        else:
            if car_num in calc.keys():
                (in_t, total_minutes) = calc[car_num]
                calc[car_num] = (r[0], total_minutes)
            else:
                calc[car_num] = (r[0], None)
        
    ordered_fees = collections.OrderedDict(sorted(calc.items()))

    answer = []
    for item in ordered_fees:
        (in_t, total_minutes) = ordered_fees[item]
        if in_t:
            charge_time = to_minute(["23","59"]) - to_minute(in_t.split(":"))
            fee = calc_fee(charge_time + total_minutes) if total_minutes else calc_fee(charge_time)
            answer.append(fee)
        else:
            answer.append(calc_fee(total_minutes))

    return answer

a = solution(
    [180, 5000, 10, 600],
    ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]
    )

print(a)