import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var score: Dictionary<String, Int> = ["R": 0,
                                         "T": 0,
                                         "C": 0,
                                         "F": 0,
                                         "J": 0,
                                         "M": 0,
                                         "A": 0,
                                         "N": 0]
    
    // 1(매우 비동의) ... 7(매우 동의)
    // 왼쪽 비동의, 오른쪽 동의
    for i in 0..<survey.count {
        let disagree = String(survey[i].first!)
        let agree = String(survey[i].last!)
        
        switch choices[i] {
            case 7:
                score[agree]! += 3
            case 6:
                score[agree]! += 2
            case 5:
                score[agree]! += 1
            case 3:
                score[disagree]! += 1
            case 2:
                score[disagree]! += 2
            case 1:
                score[disagree]! += 3
            default:
                break
        }
    }
    
    let RT = score["R"]! >= score["T"]! ? "R" : "T"
    let CF = score["C"]! >= score["F"]! ? "C" : "F"
    let JM = score["J"]! >= score["M"]! ? "J" : "M"
    let AN = score["A"]! >= score["N"]! ? "A" : "N"
    
    return RT + CF + JM + AN
}
