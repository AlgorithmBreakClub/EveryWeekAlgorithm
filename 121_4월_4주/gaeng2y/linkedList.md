# 연결 리스트

연결 리스트는 배열의 단점을 보완한 것임!

따라서, 배열과 같이 순차적으로 데이터를 보관하는 것이 아닌,

각각 떨어진 공간에 존재하는 데이터를 연결해 놓은 것임!

따라서, 원하는 때에 메모리에 공간을 할당해서 쓰면 되고,

또 배열처럼 중간 element를 삽입, 삭제 시 재배치에 발생하는 오버헤드도 발생하지 않음!

데이터에 접근하려면 첫 번째 데이터부터 원하는 데이터까지 (단방향 연결 리스트)

위 짤처럼 순차적으로 찾아가야 해서 접근 속도가 느림

또한, 내 다음 데이터에 대한 연결 정보를 저장하는 별도의 데이터 공간이 필요해서,

저장 공간의 효율이 높지 않음..!

## 단방향 연결 리스트

node 에 데이터과 다음 노드의 주소값이 저장됨

data, next

```swift
class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
```

먼저 데이터의 타입은 국한되지 않게 제네릭<T>로 선언 했음!

자, 이제 우린 데이터를 저장하고 싶을 때마다 배열의 element가 아니라,

이 Node를 생성해서 연결해주면 됨!

```swift
class LinkedList<T> {
}
```

### head

가장 첫 노드를 가리키는 프로퍼티

이렇게 첫 번째 노드부터 순차적으로 접근해야 한다고 했음!

때문에 연결 리스트에서는 첫 번째 노드를 항상 가지고 있어야 하고, 이를 head로 가리키는 것임!

```swift
class LinkedList<T> {
    private var head: Node<T>?
}
```

### append(data:)

연결 리스트 맨 마지막에 노드 추가하기

배열과 빗대어서 생각해보셈!

append의 경우, 연결리스트의 가장 마지막 노드를 찾아내어 그 뒤에 추가해주면 되는데,

노드의 가장 마지막을 찾아내는 방법은 head 노드부터 순회하며,

node.next가 nil인 경우를 찾으면 됨!

```swift
class LinkedList<T> {
    private var head: Node<T>?
    
    func append(data: T?) {
        
        //head가 없는 경우 Node를 생성 후 head로 지정해준다
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = Node(data: data)
    }    
}
```

###  insert(data:at:)

연결 리스트 중간에 노드 추가하기

배열과 달리 index가 없기 때문에 만약 index로 추가하고 싶다면

다음과 같이 직접 구현해서 해줄 수는 있음

```swift
class LinkedList<T> {
    private var head: Node<T>?
    
    func append(data: T?) {
        
        //head가 없는 경우 Node를 생성 후 head로 지정해준다
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        while node?.next != nil {
            node = node?.next
        }
        node?.next = Node(data: data)
    }
    
    func insert(data: T?, at index: Int) {
        
        //head가 없는 경우 Node를 생성 후 head로 지정한다
        if head == nil {
            head = Node(data: data)
            return
        }
        
        var node = head
        for _ in 0..<(index - 1) {
            if node?.next == nil { break }
            node = node?.next
        }
        
        let nextNode = node?.next
        node?.next = Node(data: data)
        node?.next?.next = nextNode       
    }
}
```

###  removeLast
연결 리스트 맨 마지막 노드 삭제하기

delete할 노드의 바로 이전 노드의 next를 nil로 바꿔주는 것

```swift
func removeLast() {
    
    if head == nil { return }
    
    // head를 삭제하는 경우
    if head?.next == nil {
        head = nil
        return
    }
    
    var node = head
    while node?.next?.next != nil {
        node = node?.next
    }
    
    node?.next = node?.next?.next   
}
```

왜 nil이 아닌 삭제할 node.next를 지정하냐면,

어차피 맨 마지막 노드의 next는 nil일테니까

### remove(at:)

연결 리스트 중간 노드 삭제하기

delete할 노드의 바로 이전 노드의 next를

delete 할 노드의 next로 바꿔주면 됨

```swift
func remove(at index: Int) {
    
    if head == nil { return }
    
    // head를 삭제하는 경우
    if index == 0 || head?.next == nil {
        head = head?.next
        return
    }
    
    var node = head
    for _ in 0..<(index - 1) {
        if node?.next?.next == nil { break }
        node = node?.next
    }
    
    node?.next = node?.next?.next   
}
```

### searchNode(from:)

data로 노드 찾기

```swift
func searchNode(from data: T?) -> Node<T>? {
    
    if head == nil { return nil }
    
    var node = head
    while node?.next != nil {
        if node?.data == data { break; }
        node = node?.next
    }
    
    return node
}
```