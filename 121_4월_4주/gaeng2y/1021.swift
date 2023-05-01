let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var target = readLine()!.split(separator: " ").map { Int($0)! }
var array = [Int](1...n)
var answer = 0

while !target.isEmpty {
    if array.first! == target.first! {
        array.removeFirst()
        target.removeFirst()
        continue
    }
    
    let startToDistance = array.firstIndex(of: target.first!)!
    let endToDistance = array.count - array.firstIndex(of: target.first!)!
    
    if startToDistance < endToDistance {
        array.append(array.removeFirst())
    } else {
        array.insert(array.removeLast(), at: 0)
    }
    answer += 1
}

print(answer)