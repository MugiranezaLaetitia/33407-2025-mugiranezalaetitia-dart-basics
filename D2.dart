// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

String initials(String fullName) {
  // by ML
  final parts = fullName.trim().split(RegExp(r'\s+'));
  var result = '';
  for (final p in parts) {
    if (p.isNotEmpty) result += '${p[0].toUpperCase()}.';
  }
  return result;
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  print(initials('Mugiraneza Laetitia')); // M.L.
  print(initials(' ana uwase ')); // A.U.
  print("'${initials(' ')}'"); // ''
}