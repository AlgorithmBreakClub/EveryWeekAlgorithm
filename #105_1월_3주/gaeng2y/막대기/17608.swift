let N = Int(readLine()!)!
var stick = [Int]()
var result = 1
var max = 0

for _ in 0..<N {
    stick.append(Int(readLine()!)!)
}
stick.reverse()

max = stick[0]
for i in 1..<N {
    if stick[i] > max {
        result += 1
        max = stick[i]
    }
}
print(result)
