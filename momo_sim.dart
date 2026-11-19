// Student: Mugiraneza Laetitia
// Reg no: 33407
const String regNo = '33407';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  // by ML
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String formatRwf(int amount) {
  // by ML
  final negative = amount < 0;
  final digits = (negative ? -amount : amount).toString();
  var result = '';
  var i = digits.length;
  while (i > 0) {
    final start = i - 3 < 0 ? 0 : i - 3;
    final group = digits.substring(start, i);
    result = result.isEmpty ? group : '$group,$result';
    i = start;
  }
  return '${negative ? '-' : ''}$result RWF';
}

bool isValidPin(String pin) {
  // by ML
  if (pin.length != 5) return false;
  var i = 0;
  var allSame = true;
  while (i < pin.length) {
    final c = pin.codeUnitAt(i);
    if (c < 48 || c > 57) return false;
    if (pin[i] != pin[0]) allSame = false;
    i++;
  }
  if (pin == '12345') return false;
  return !allSame;
}

int sendMoney(int balance, int amount) {
  // by ML
  final fee = momoFee(amount);
  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }
  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  final newBalance = balance - amount - fee;
  print('Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). New balance: ${formatRwf(newBalance)}');
  return newBalance;
}

int buyAirtime(int balance, int amount) {
  // by ML
  if (amount < 100 || amount > 50000) {
    print('Failed: airtime must be from ${formatRwf(100)} to ${formatRwf(50000)}');
    return balance;
  }
  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  final newBalance = balance - amount;
  print('Bought airtime ${formatRwf(amount)}. New balance: ${formatRwf(newBalance)}');
  return newBalance;
}

void main() {
  // by ML
  print('Reg no: $regNo | D = $d | T = $t');
  print(isValidPin('12345'));
  print(isValidPin('77777'));
  print(isValidPin('4821'));
  print(isValidPin('48a21'));
  print(isValidPin('4821$d'));

  int balance = 20000 + t * 500;
  print('Starting balance: ${formatRwf(balance)}');
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = sendMoney(balance, (d + 1) * 3000);
  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);
  print('Final balance: ${formatRwf(balance)}');

  print(formatRwf(100)); // 100 RWF
  print(formatRwf(1000000)); // 1,000,000 RWF
  print(formatRwf(-999)); // -999 RWF
  print(formatRwf(-1000)); // -1,000 RWF (could break: sign + comma)
  print(isValidPin('00000')); // false
  print(isValidPin('12 45')); // false
  print(isValidPin('')); // false
  print(isValidPin('54321')); // true
}