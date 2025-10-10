import Foundation

/*
 [조합의 일반화된 공식]

 의상 종류가 k가지이고, 각 종류별 의상의 개수가 n₁, n₂, ..., nₖ 개일 때,
 옷을 입을 수 있는 모든 조합의 수는 다음과 같습니다.

 (n₁ + 1) * (n₂ + 1) * ... * (nₖ + 1) - 1

 - 각 (n + 1)은 해당 종류의 옷을 입는 경우의 수(n가지)와
   입지 않는 경우의 수(1가지)를 더한 값입니다.
 - 마지막에 1을 빼는 이유는 모든 종류의 옷을 입지 않는 경우를 제외하기 위함입니다.
*/

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: [String]] = [:]
    
    for cloth in clothes {
        guard let kind = cloth.last,
              let name = cloth.first else {
            continue
        }
        var names = dict[kind] ?? []
        names.append(name)
        dict[kind] = names
    }
    
    // 조합
    return dict.values.map { $0.count + 1 }.reduce(1, *) - 1
}
