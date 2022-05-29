N,M = list(map(int,input().split()))
answer = [] 
def get_list():
    if len(answer) == M:
        print(' '.join(map(str,answer)))
        return

    for item in range(1,N+1):
        if item not in answer:
            answer.append(item)
            get_list()  
            answer.pop()

get_list()