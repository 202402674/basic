import 'dart:io';

int sumDigits(int n) {
  if (n <= 0) return n;

  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}

void main() {
  stdout.write('정수를 입력하세요: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('입력이 잘못되었습니다.');
    return;
  }

  int? number = int.tryParse(input);
  if (number == null) {
    print('숫자를 입력해주세요.');
    return;
  }

  int result = sumDigits(number);
  print(result);
}
