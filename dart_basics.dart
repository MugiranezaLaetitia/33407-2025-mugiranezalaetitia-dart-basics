// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

const String fullName = 'Mugiraneza Laetitia';

// ---------- B2 ----------
int countVowels(String text) {
  // by ML
  const vowels = 'aeiou';
  int count = 0;
  for (final ch in text.toLowerCase().split('')) {
    if (vowels.contains(ch)) count++;
  }
  return count;
}

// ---------- B3 ----------
String initials(String fullName) {
  // by ML
  final parts = fullName.trim().split(RegExp(r'\s+'));
  var result = '';
  for (final p in parts) {
    if (p.isNotEmpty) result += '${p[0].toUpperCase()}.';
  }
  return result;
}

// ---------- C5 ----------
void drawTriangle(int height) {
  // by ML
  for (int row = 1; row <= height; row++) {
    final ch = row.isOdd ? '*' : '#';
    print(' ' * (height - row) + ch * row);
  }
}

// ---------- D2 ----------
int momoFee(int amount) {
  // by ML
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by ML
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) + '*' * (phone.length - 5) + phone.substring(phone.length - 2);
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');

  // B2
  print('$fullName has ${countVowels(fullName)} vowels');

  // B3
  print(initials(fullName));
  print(initials(' ana uwase '));
  print("'${initials(' ')}'");

  // C5
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  // D2
  const phone = '0788123456';
  int i = 1;
  int totalFees = 0;
  while (i <= d + 3) {
    final amount = i * 4000 + t * 100;
    final fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}