/*
n = 6
vertext = [
    [3, 6], 
    [4, 3], 
    [3, 2], 
    [1, 3], 
    [1, 2], 
    [2, 4], 
    [5, 2]
    ]
return =  3	
*/

import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n + 1)
    for i in edge{
        graph[i[0]].append(i[1])
        graph[i[1]].append(i[0])
    }
    var maxCount = 0
    var moveCntArr = Array(repeating: [Int](), count: 50001)
    func bfs(){
        var queue = [(Int, Int)]() //노드번호, 이동횟수
        var visited = Array(repeating: false, count: n + 1)
        queue.append((1, 0))
        visited[1] = true
        while !queue.isEmpty{
            let (node, moveCnt) = queue.removeFirst()
            moveCntArr[moveCnt].append(node)
            maxCount = max(moveCnt, maxCount)
            for i in graph[node]{
                if !visited[i]{
                    queue.append((i, moveCnt + 1))
                    
                    visited[i] = true
                }
            }
        }
    }
    bfs()
    
    return moveCntArr[maxCount].count
}