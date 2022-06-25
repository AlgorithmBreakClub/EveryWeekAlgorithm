import Foundation

let input = readLine()!.split { $0 == " " }.map { Int($0)! }
var money = 0
if input[0] == input[1] && input[1] == input[2] {
    money = 10000 + input[0] * 1000
    print(money)
} else if input[0] == input[1]
            || input[1] == input[2]
            || input[0] == input[2] {
    
    if input[0] == input[1] {
        money = 1000 + input[0] * 100
    } else if input[1] == input[2] {
        money = 1000 + input[1] * 100
    } else if input[0] == input[2] {
        money = 1000 + input[0] * 100
    }
    print(money)
} else {
    let max = input.max()!
    money = max * 100
    print(money)
}

