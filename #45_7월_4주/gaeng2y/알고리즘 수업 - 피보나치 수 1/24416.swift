import Foundation

func recursion(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return recursion(n - 1) + recursion(n - 2)
    }
}

func dynamicProgramming(_ n: Int) -> Int {
    var result = 0
    var arr = [0, 1, 1]
    
    for i in 3...n {
        arr.append(arr[i - 2] + arr[i - 1])
        result += 1
    }
    return result
}

let n = Int(readLine()!)!
print("\(recursion(n)) \(dynamicProgramming(n))")
