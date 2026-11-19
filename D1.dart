// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int count = 1;

void bump() {
  // by ML
  int count = 10;
  count++;
}

void doubleIt(int value) {
  // by ML
  value = value * 2;
}

int addVat(int price, {int rate = 18}) => price + price * rate ~/ 100;

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  bump();
  print(count); // 1
  int v = 5;
  doubleIt(v);
  print(v); // 5
  print(addVat(1000)); // 1180
  print(addVat(999)); // 1178
  print(addVat(1000, rate: 0)); // 1000
}