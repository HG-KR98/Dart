void main() {
  //  주석 입니당 ㅎㅎ
  print('hello world!');

  /* 여러 줄 주석입니당!
   * 
   * 
   * */

  /// 이거는 문서 주석!

  var name = '김헌규';
  print(name);

  // 변숫값 변경 가능
  name = '골든래빗';
  print(name);

  //   name = 1;
  //   print(name); 에러발생! var는 처음에 지정된 타입이 고정

  // 반면 dynamic은 변수 고정이 아님!
  dynamic name2 = '기먼규';
  print(name2);

  name2 = 1;
  print(name2);

  name2 = false;
  print(name2);

  // final과 const을 설정하면 변수의 값을 처음 선언 후 값을 변경할 수 없음!
  // final은 런타임, const는 빌드 타임 상수이다.
  final String name3 = '기먼규';
  const String name4 = '먼규';

  final DateTime now = DateTime.now();

  print(now);

  // const DateTime now2 = DateTime.now();
  // print(now2);

  // String - 문자열
  String name5 = '규';

  // int - 정수
  int isInt = 10;

  // double - 실수
  double isDouble = 2.5;

  // bool - 불리언 (true/ false)
  bool isTrue = true;

  print(name5);
  print(isInt);
  print(isDouble);
  print(isTrue);
}
