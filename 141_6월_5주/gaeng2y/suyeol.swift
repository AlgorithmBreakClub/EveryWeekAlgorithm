import Foundation

func solution(_ elements:[Int]) -> Int {
    //중복을 제거해야 하므로 Set<Int>를 사용
    var result = Set<Int>()
    //연속된 수열 %처리 해줘도 되지만 2배로 늘려줘도 된다.
    let long = elements + elements
    
    //시작 인덱스부터 원소의 개수만큼 누적되는 누적합을 result에 쌓아간다.
    for idx in 0..<elements.count{
        var num = 0
        for offset in 0..<elements.count{
            num += long[idx+offset]
            result.insert(num)
        }
        num = 0
    }
    return result.count
}
