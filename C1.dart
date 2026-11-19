// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void c1() {
  // by ML
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue;
    if (i == 4) break;
    print(i); // 0, 1, 3
  }
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  c1();
}