import Foundation

var arr = [Int]()
var se: Set<Int> = []
for  i in 1...10000 {
    se.insert(d(i))
}
for j in 1...10000 {
    if !se.contains(j) {
        print(j)
    }
}

func d(_ n: Int) -> Int {
    var sum = n
    var number = n
    while n != 0 {
        sum = sum + number % 10
        number = number / 10

        if number == 0 {
            break
        }
    }
    return sum
}
