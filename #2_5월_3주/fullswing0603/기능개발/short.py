def solution(p, s):
    a=[];t=c=0;
    while p:
        if p[0]+(t*s[0])>=100:c+=1;p.pop(0);s.pop(0);continue;
        a.append(c);c=0;t+=1
    a.append(c);return [b for b in a if b>0]
    