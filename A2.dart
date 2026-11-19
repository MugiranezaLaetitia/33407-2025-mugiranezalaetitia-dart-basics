// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void a2() {
  // by ML
  int x = d; // your D = 7
  int y = t; // your T = 7
  var z = x * 2 + y ~/ 4;
  z += x;
  print(z); // 22
  print(z.isEven); // true
  print('$z' + '$x'); // 227
  print(z.runtimeType); // int
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  a2();
}