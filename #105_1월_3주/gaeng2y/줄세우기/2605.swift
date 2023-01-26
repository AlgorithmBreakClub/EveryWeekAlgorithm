let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var list = [1];

for i in 2...N {
    list.insert(i, at: list.count-input[i-1])
}

print(list.map{String($0)}.joined(separator: " "))
