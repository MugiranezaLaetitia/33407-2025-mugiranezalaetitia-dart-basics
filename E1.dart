// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

String grade(int mark) {
  // by ML
  if (mark >= 50) {
    return 'C';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 80) {
    return 'A';
  }
  return 'F';
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  print(grade(85)); // C  (wrong: should be A)
  print(grade(72)); // C  (wrong: should be B)
  print(grade(55)); // C
  print(grade(10)); // F
}