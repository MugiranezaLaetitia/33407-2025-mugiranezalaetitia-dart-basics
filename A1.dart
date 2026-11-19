// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// ---------- A1 ----------
void main() {
  // by ML
  int a = 17;
  int b = 5;
  print(a / b); // 3.4
  print(a ~/ b); // 3
  print(a % b); // 2
  print(-a % b); // 3
  print(-a ~/ b); // -3
  print(-17.abs()); // -17
  print(0.1 + 0.2 == 0.3); // false
  print(10 == 10.0); // true
}
