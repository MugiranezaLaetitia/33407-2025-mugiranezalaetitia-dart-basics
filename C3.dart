// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void c3() {
  // by ML
  int? bonus;
  print(bonus ?? 50); // 50
  bonus ??= 70;
  bonus ??= 90;
  print(bonus); // 70

  int n = 10;
  do {
    print(n); // 10
    n += 3;
  } while (n < 10);
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  c3();
}