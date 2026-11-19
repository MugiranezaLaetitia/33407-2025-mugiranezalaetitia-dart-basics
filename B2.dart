// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int countVowels(String text) {
  // by ML
  const vowels = 'aeiou';
  int count = 0;
  for (final ch in text.toLowerCase().split('')) {
    if (vowels.contains(ch)) count++;
  }
  return count;
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  const fullName = 'Mugiraneza Laetitia';
  print('$fullName has ${countVowels(fullName)} vowels');
}