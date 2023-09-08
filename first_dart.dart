import 'dart:convert';
import 'dart:io';

void main() {
  /**1 */
  print(gcd(8, 7));
  print(gcd(2, 6));

  print(lcm(5, 2));
  print(lcm(4, 6));
/** */

/** 2 */
  int input;
  int bin = 0, i = 1;
  input = 5;
  while (input > 0) {
    bin = bin + (input % 2) * i;
    input = (input / 2).floor();
    i = i * 10;
  }
  print(bin);

  final decimalNumber = 148;
  final binaryNumber = decimalNumber.toRadixString(2);
  //print(decimalNumber.runtimeType);
  print(binaryNumber);

  int decimalNumber1 = int.parse(binaryNumber, radix: 2);
  print(decimalNumber1);
  /** */

  /**3 */
  RegExp exp = RegExp(r"[^0-9]+");
  String str = 'Ok1 Go2ogle, let`3s pla4y a g5ame 007.';
  String res = str.replaceAll(exp, '');
  print('res: $res');
  List<String> list = res.split('').toList();
  print(list);
  /** */

  /**4 */
  final myList = [
    {'name': 'Bill', 'age': 44},
    {'name': 'Andy', 'age': 41},
    {'name': 'Bill', 'age': 44},
    {'name': 'Andy', 'age': 41}
  ];

  final jsonList = myList.map((item) => jsonEncode(item)).toList();
  final uniqueJsonList = jsonList.toSet().toList();
  final result = uniqueJsonList.map((item) => jsonDecode(item)).toList();
  print(result);
}

/**1 add */
int lcm(int a, int b) => (a * b) ~/ gcd(a, b);
int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}
/** */





