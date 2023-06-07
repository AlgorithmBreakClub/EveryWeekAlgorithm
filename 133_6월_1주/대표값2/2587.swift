var array: [Int] = []

for _ in 0..<5 {
    array.append(Int(readLine()!)!)
}

print(array.reduce(0, +) / 5)
print(array.sorted(by: <)[2])
