import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var connect = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
    var minCount:Int = Int.max
    
    wires.forEach {
        connect[$0[0]][$0[1]] = true
        connect[$0[1]][$0[0]] = true
    }
    
    wires.forEach {
        var leftCount:Int = 0
        var rightCount:Int = 0
        countConnectingWire(parent: nil, start: $0[0], stop: $0[1], count: &leftCount, connect: connect)
        countConnectingWire(parent: nil, start: $0[1], stop: $0[0], count: &rightCount, connect: connect)
        minCount = min(minCount, abs(leftCount - rightCount))
    }
    return minCount
}

func countConnectingWire(parent: Int?, start: Int, stop: Int, count: inout Int, connect: [[Bool]]) {
    let filter = connect[start].enumerated().filter{ $0.element && $0.offset != parent && $0.offset != stop }.map{ $0.offset }
    count += filter.count
    filter.forEach {
        countConnectingWire(parent:start, start: $0, stop: stop, count: &count, connect: connect)
    }
}
