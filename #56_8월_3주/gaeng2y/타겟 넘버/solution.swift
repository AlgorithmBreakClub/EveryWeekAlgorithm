import UIKit

func solution(_ numbers:[Int], _ target:Int) -> Int {
  var count = 0
  
  func DFS(index: Int, sum: Int) {
    if index == (numbers.count - 1) && sum == target { // 마지막 인덱스까지 모두 계산한 값이 target과 같다면
      count += 1 // count를 +1해주고
      return // 더 이상 계산할 값이 없으므로(자식노드가 없으므로) return 해준다
    }

    guard index + 1 < numbers.count else { return }
    
    DFS(index: index+1, sum: sum + numbers[index + 1]) // +자식 노드 실행
    DFS(index: index+1, sum: sum - numbers[index + 1]) // -자식 노드 실행
  }
  
  DFS(index: -1, sum: 0)
  
  return count
}

