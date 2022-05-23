import Foundation
func solution() -> Int {
    let num = Int(readLine()!)!
    var triangle = [[Int]]()
    for _ in 0..<num {
        triangle.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }
    for i in 1 ..< num {
        for j in 0 ..< i+1 {
            if j == 0 {
                // 맨 왼쪽일 때
                triangle[i][j] += triangle[i - 1][j]
            } else if j==i {
                // 맨 오른쪽일 때
                triangle[i][j] += triangle[i-1][j-1]
            } else {
                // 그 외의 경우 맨 왼쪽가 맨 오른쪽 사이
                triangle[i][j] += max(triangle[i - 1][j], triangle[i - 1][j - 1])
            }
        }
    }
    // 마지막 행의 제일 큰 값이 최대 값
    return triangle[num - 1].max()!
}

print(solution())

