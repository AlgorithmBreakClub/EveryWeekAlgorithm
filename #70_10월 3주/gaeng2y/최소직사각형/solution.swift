import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    let count = size.count;
    var x: [Int] = []
    var y: [Int] = []

    for i in 0..<count {
        size[i].sort()
        x.append(size[i][0])
        y.append(size[i][1])
    }
    return x.max()! * y.max()!
}
