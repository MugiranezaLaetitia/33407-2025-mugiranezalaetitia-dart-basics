// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void c4() {
  // by ML
  int x = d; // your D = 7
  String result = '';
  while (x > 0) {
    if (x % 2 == 0) {
      result += 'E';
    } else {
      result += 'O';
    }
    x -= 3;
  }
  print(result); // OEO
  print(result.length); // 3
  print(result.isEmpty ? 'nothing' : result[0]); // O
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  c4();
}