// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void b1() {
  // by ML
  String city = 'Kigali';
  print(city.length); // 6
  print(city[city.length - 1]); // i
  print(city.substring(2, 4)); // ga
  print(city.toUpperCase().indexOf('A')); // 3
  print(city.contains('k')); // false
  print('$city.length'); // Kigali.length
  print('${city.length}'); // 6
  print(city * 2); // KigaliKigali
  city.toUpperCase();
  print(city); // Kigali
  print(city.replaceAll('i', '!')); // K!gal!
  print('5' + 5.toString()); // 55
  print(int.parse('5') + 5); // 10
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  b1();
}