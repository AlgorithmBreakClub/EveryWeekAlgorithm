# 트리(Tree)

트리란 노드(Node)와 간선(Edge)을 이용해 사이클을 이루지 않도록 구성한 데이터 구조다.

비선형 자료구조로 계층적 관계를 표현하는데 자주 사용한다. (ex. 디렉터리, 조직도)

![트리](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fdflrkk%2FbtrDkuXo28Q%2FmCxpy8vWyHre3R2SEKuoTK%2Fimg.png)

## 트리 용어

노드 (node) : 트리에서 데이터를 저장하는 기본 요소
루트 노드(root node) : 최상위 노드. 트리에서 루트 노드는 단 한 개 존재합니다.
단말 노드(leaf node) : 최하위 노드. 자식이 없는 노드로, 말단 노드라고도 부릅니다.
내부 노드(internal node) : 단말 노드가 아닌 노드.
부모 노드(parent node) : 상위 노드
자식 노드(child node) : 하위 노드. 자식 노드의 자식 노드를 자손 노드라고 하기도 하지만 자식 노드로 말하기도 합니다.
형제 노드(sibiling node) : 같은 부모를 가지는 노드
간선(edge) : 노드를 연결하는 선
노드의 크기(size) : 자신 + 모든 자손 노드 개수
노드의 깊이(depth) : 루트 노드에서 특정 노드까지 거쳐야 하는 간선의 개수. level이라고도 합니다.
개념적으로 루트 노드의 depth는 0이 맞지만 일부에선 1로 설정하기도 합니다.
노드의 차수(degree) : 각 노드가 지닌 가지의 수.
트리의 차수 : 트리의 최대 차수
트리의 높이 : 트리의 최대 깊이
루트 노드, 단말 노드, 부모 노드, 자식 노드, 간선, 노드의 깊이는 자주 나오는 용어이니 꼭 알아둡시다.