# 이진 탐색(Binray Search)

## 정의

탐색할 자료를 둘로 나누어, 해당 데이터가 있을 곳을 탐색함

탐색할 자료가 정렬되어 있을 때만 사용 가능함

정렬 등과 함께 가장 기초인 알고리즘으로 꼽히는 문제. 검색 범위를 줄여 나가면서 원하는 데이터를 검색하는 알고리즘이다.

![이진탐색](https://i.namu.wiki/i/9sQpJ4ilpY9GSmyy5olQ_-TovZ7drPaRe-WMvT41h2FTEfGW_g36hmGGJzxWGQ6-2_kU6knU8FYutXNnIisy5Y1G0zfSmCRmTlAPiKy0Fje2DJe2d6ggcep_o9m90N0YSFknG9Vj1CBE2sjullqx2Q.webp)

```
function 이진탐색(데이터, 찾는 값)

데이터가 혹시 비어 있는가?
(네) return 찾는 값 없음.

데이터의 가운데 지점을 찾는다.
찾은 지점의 값을 뽑는다.
뽑은 값이 찾는 값인가?

(네) return 뽑은 값.
(아니요)
  뽑은 값과 찾는 값을 비교한다.
  (뽑은 값이 찾는 값보다 큰 값인가?)
    return 이진탐색(데이터 앞쪽 절반, 찾는 값)
  (작은 값인가?)
    return 이진탐색(데이터 뒤쪽 절반, 찾는 값)
```

## 구현

```swift
// 재귀 함수로 구현하기
func binarySearch(_ array: [Int], num: Int) -> Bool {
    if array.count == 1 {
        return array[0] == num ? true : false
    }
    let mid = array.count / 2
    if array[mid] == num { return true }
    let range = array[mid] > num ? (0..<mid) : ((mid + 1)..<array.count)
    
    return binarySearch(Array(array[range]), num: num)
}
```

```swift
// 반복문으로 구현하기
func binarySearch(_ array: [Int], num: Int) -> Bool {
    var start = 0
    var end = (array.count - 1)
    
    while start <= end {
        let mid = (start + end) / 2
        
        if array[mid] == num { return true }
        if array[mid] > num {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return false
}
```

## 시간 복잡도

n개의 배열을 매번 2로 나누어, (최악의 경우) 배열의 갯수가 1이 될 때까지 반복하니,

이진 탐색의 시간 복잡도는 O(𝑙𝑜𝑔𝑛)