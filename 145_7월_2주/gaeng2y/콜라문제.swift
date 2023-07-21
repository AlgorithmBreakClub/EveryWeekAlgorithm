import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cokeCount = n			// 가지고 있는 콜라 수
    var receivedCokeCount = 0	// 교환을 통해 받은 콜라 수

	// 가지고 있는 콜라의 수가 주어야 하는 병 수 보다 작아질 때 까지 반복
    while cokeCount >= a {
        receivedCokeCount += cokeCount / a * b
        cokeCount = (cokeCount / a * b) + (cokeCount % a)
    }

    return receivedCokeCount

}
