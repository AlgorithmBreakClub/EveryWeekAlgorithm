def solution(players, callings):

     rank_dict = {}
     name_dict = {}
     for idx,v in enumerate(players):
         rank_dict[v] = idx+1
         name_dict[idx+1] = v

     for name in callings:
          rank = rank_dict[name]
          rank_dict[name] = rank - 1
          prev_name = name_dict[rank - 1]
          name_dict[rank - 1] = name
          rank_dict[prev_name] = rank
          name_dict[rank] = prev_name

     sortd_list = sorted(name_dict.items())
     answer = [v for k,v in sortd_list]
     return answer

print(solution(["mumu", "soe", "poe", "kai", "mine"],["kai", "kai", "mine", "mine"]))