import heapq

def solution(scoville, K):
    answer = 0
    heapq.heapify(scoville)
    while True:
        mf = heapq.heappop(scoville)
        if mf >= K:
            break
        elif len(scoville) == 0:
            answer = -1
            break
        ms = heapq.heappop(scoville)
        tmp = mf + 2*ms
        heapq.heappush(scoville, tmp)
        answer += 1
    return answer
