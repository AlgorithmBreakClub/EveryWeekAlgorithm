import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    enum KeypadHand {
        case left
        case right
    }
  
    var result = ""
    var leftHand = 10 // 왼손이 누른 키패드 숫자를 저장할 변수 선언 (* = 10)
    var rightHand = 12 // 오른손이 누른 키패드 숫자를 저장할 변수 선언 (# = 12)
  
    for i in numbers {
        let number = i == 0 ? 11 : i // 키패드 숫자가 0일 경우 11로 바꿔준다
        var tapHand: KeypadHand = .left // 사용한 손을 저장할 변수 선언
        
        switch number {
            case 1, 4, 7:   // 1, 4, 7인 경우
            tapHand = .left
      
            case 3, 6, 9:   // 3, 6, 9인 경우
            tapHand = .right
     
            case 2, 5, 8, 11: // 2, 5, 8, 0인 경우
            let leftTemp = (number - leftHand).magnitude    // 눌러야 할 숫자와 왼손이 눌렀던 숫자의 차이 절대값
            let rightTemp = (number - rightHand).magnitude    // 눌러야 할 숫자와 오른손이 눌렀던 숫자의 차이 절대값
      
            let leftDistance = (leftTemp / 3) + (leftTemp % 3) // 왼손과 눌러야 할 숫자간의 거리
            let rightDistance = (rightTemp / 3) + (rightTemp % 3) // 오른손과 눌러야 하 숫자간의 거리
      
            if leftDistance == rightDistance { // 왼손과 오른손 거리값이 같은 경우
                tapHand = hand == "left" ? .left : .right  // 어느 손 잡이 인지에 따라 사용할 손 결정 됨
            } else {  // 그 외
                tapHand = leftDistance < rightDistance ? .left : .right  // 거리값이 작은 손으로 결정됨
            }
            default:
            break
        }
    
        // 선택된 손에 따라 결과 값 저장하고 누른 숫자 update해주기
        if tapHand == .left {
            result.append("L")
            leftHand = number
        } else {
            result.append("R")
            rightHand = number
        }
    }
    return result
}
