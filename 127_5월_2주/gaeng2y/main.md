# 그래프 탐색
* 탐색이란 많은 양의 데이터 중에서 **원하는 데이터를 찾는 과정**을 말한다.
* 그래프를 탐색한다는 것은 하나의 정점으로부터 시작하여 차례대로 모든 정점들을 한 번씩 방문하는 것을 말한다.
* 그래프를 완전 탐색하는 방법에는 크게 깊이 우선 탐색(DFS)과 너비 우선 탐색(BFS)이 있다.

## 1. 깊이 우선 탐색 (DFS, Depth-First Search)
* 최대한 깊이 내려간 뒤, 더이상 깊이 갈 곳이 없을 경우 옆으로 이동

<figure>
<img src="https://blog.kakaocdn.net/dn/xC9Vq/btqB8n5A25K/GyOf4iwqu8euOyhwtFuyj1/img.gif" alt="DFS" style="width:100%">
<figcaption align = "center"><b>출처 https://developer-mac.tistory.com/64</b></figcaption>
</figure>

### 깊이 우선 탐색의 개념
* 그래프에서 **깊은 부분을 우선적으로 탐색하는 알고리즘**이다.
* DFS는 스택 자료구조(혹은 재귀 함수)를 이용한다.
* 구체적인 동작 과정은
    1. 탐색 시작 노드를 스택에 삽입하고 방문 처리를 한다.
    2. 스택의 최상단 노드에 방문하지 않은 인접한 노드가 하나라도 있으면 그 노드를 스택에 넣고 방문 처리한다. 방문하지 않은 인접노드가 없으면 스택에서 최상단 노드를 꺼낸다.
    3. 더 이상 2번의 과정을 수행할 수 없을 때까지 반복한다.


## 2. 너비 우선 탐색 (BFS, Breadth-First Search)
* 최대한 넓게 이동한 다음, 더 이상 갈 수 없을 때 아래로 이동

<figure>
<img src="https://blog.kakaocdn.net/dn/c305k7/btqB5E2hI4r/ea7vFo08tkDYo4c8wkfVok/img.giff" alt="BFS" style="width:100%">
<figcaption align = "center"><b>출처 https://developer-mac.tistory.com/64</b></figcaption>
</figure>

### 너비 우선 탐색의 개념
* 그래프에서 **가까운 노드부터 우선적으로 탐색하는 알고리즘**이다.
* BFS는 큐 자료구조를 이용한다.
* 구체적인 동작 과정은
    1. 탐색 시작 노드를 큐에 삽입하고 방문 처리를 한다.
    2. 큐에서 노드를 꺼낸 뒤에 해당 노드의 인접 노드 중에서 방문하지 않은 노드를 모두 큐에 삽입하고 방문처리 한다.
    3. 더 이상 2번의 과정을 수행할 수 없을 떄까지 반복한다.
