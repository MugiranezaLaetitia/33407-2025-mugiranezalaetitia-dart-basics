// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void c2(int day) {
  // by ML
  switch (day) {
    case 1:
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');
  }
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  print('--- day = 2 ---');
  c2(2); // Early week
  print('--- day = 1 ---');
  c2(1); // Early week
}