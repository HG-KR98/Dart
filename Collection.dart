/* 컬렉션은 여러 값을 하나의 변수에 저장할 수 있는 타입.
   여러 값을 순서대로 저장하거나(List), 특정 키 값을 기반으로 빠르게 값을 검색해야 하거나(Map), 중복된 데이터를 제거할 때 사용(Set)된다.
   컬렉션 타입은 서로의 타입으로 자유롭게 형변환이 가능하다는 큰 장점이 있다.
*/

enum Status { approved, pending, rejected }

void main() {
  // 리스트에 넣을 타입을 <> 사이에 명시할 수 있다.
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList);
  print(blackPinkList[0]); // 첫 원소 출력
  print(blackPinkList[3]); // 마지막 원소 출력

  print(blackPinkList.length); // 길이 반환

  blackPinkList[3] = '기먼규'; // 3번 인덱스값 변경
  print(blackPinkList);

  // List에 값을 추가할 때 add() 사용
  blackPinkList.add('로제'); // 리스트의 끝에 추가
  print(blackPinkList);

  // where() 함수는 List에 있는 값들을 순서대로 순회하면서 특정 조건에 맞는 값만 필터링 하는데 사용한다.
  // 매개 변수에 함수를 입력해야 하며, 입력된 함수는 기존 값을 하나씩 매개변수로 입력 받는다.
  // 각 값별로 true를 반환하면 값을 유지하고, false를 반환하면 값을 버니다. 순회가 끝나면 유지된 값들을 기반으로 이터러블이 반환된다.
  final newList = blackPinkList.where((name) => name == '리사' || name == '기먼규');

  print(newList);
  print(newList.toList()); // Iterable을 List로 다시 변환할 때 .toList() 사용.

  // map() 함수는 List에 있는 값들을 순회하면서 값을 변경할 수 있다.
  // 매개변수에 함수를 입력해야 하며 입력된 함수는 기존 값을 하나씩 매개변수로 입력 받는다.
  final newBlackPink = blackPinkList.map((name) => '블랙핑크 $name');

  print(newBlackPink);
  print(newBlackPink.toList());

  // reduce() 함수 역시 List에 있는 값들을 순회하면서 매개변수에 입력된 함수를 실행한다.
  // 다만 reduce() 함수는 순회할 때마다 값을 쌓아가는 특징이 있다.
  // 이전의 함수들은 모두 Iterable을 반환했지만 reduce() 함수는 List 멤버의 타입과 같은 타입을 반환한다.
  // value에 element를 더해나가는 방식이다.
  final allMembers = blackPinkList.reduce(
    (value, element) => value + ', ' + element,
  );
  print(allMembers);

  // fold() 함수는 reduce() 함수와 실행되는 논리는 똑같다.
  // reduce() 함수는 함수가 실행되는 리스트 요소들이 타입이 같아야 하지만, fold() 함수는 어떠한 타입이든 반환할 수 있다.
  // 첫번째 매개변수는 입력된 값이 초깃값으로 사용된다.최초 순회때 value에 첫번째 매개변수의 값이 입력된다는 것이다.
  // 그 이후에는 기존 순회의 반환값이 입력된다.
  final allMembers2 = blackPinkList.fold<int>(
    0,
    (value, element) => value + element.length,
  );
  print(allMembers2);

  // Map타입은 키와 값의 짝을 저장한다. 순서대로 값을 저장하는 데 중점을 두는 리스트와 달리 맵은 키를 이용해서 원하는 값을 빠르게 찾는 데 중점을 둔다.
  // Map<키 타입, 값 타입> 맵 이름 형식으로 생성한다.
  // 모든 Map 타입은 키와 값을 모두 반환받을 수 있다. 값을 반환받고 싶은 Map 타입의 변수에 key와 value 게터를 실행하면 된다.
  Map<String, String> dictionary = {
    'Harry Potter': '해리 포터', // 키 : 값
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };

  print(dictionary['Harry Potter']);
  print(dictionary['Hermione Granger']);

  print(dictionary.keys);
  print(dictionary.values);

  // Set은 중복 없는 값들의 집합이다. Set<타입> 세트이름 형식으로 생성한다.
  Set<String> blackPinkSet = {'로제', '지수', '리사', '제니', '제니'}; // 제니 중복
  print(blackPinkSet);
  print(blackPinkSet.contains('로제')); // 값이 있는지 확인하기
  print(blackPinkSet.toList()); // 리스트로 변환하기

  List<String> blackPink3 = ['로제', '지수', '지수'];
  print(Set.from(blackPink3)); // List 타입을 Set 타입으로 변환

  // enum은 한 변수의 값을 몇 가지 옵션으로 제한하는 기능이다. 선택지가 제한적일 때 사용한다.
  // String으로 완전 대체할 수 있지만 enum은 기본적으로 자동 완성이 지원되고 정확히 어떤 선택지가 존재하는지 정의해둘 수 있기 때문에 유용하다.
  Status status = Status.approved;
  print(status); // Status.approved;
}
