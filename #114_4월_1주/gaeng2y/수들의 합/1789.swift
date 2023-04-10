import Foundation

let S = Int(readLine()!)!
var answer = 0
var i = 1
var sum = 0
while(true){
    sum += i
    answer += 1
    i += 1
    if sum == S{break}
    else if sum > S{
        answer -= 1
        break
    }
}
print(answer)
