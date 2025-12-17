import 'package:flutter_test/flutter_test.dart';

int reverseNumber(int number) {
  int reversed = 0;
  int num = number.abs();

  while (num != 0) {
    int remainder = num % 10;
    reversed = reversed * 10 + remainder;
    num ~/= 10;
  }

  return number < 0 ? -reversed : reversed;
}

void main() {
  group('Reverse Number Tests', () {
    test('Positive number', () {
      expect(reverseNumber(1234), 4321);
    });

    test('Single digit number', () {
      expect(reverseNumber(7), 7);
    });

    test('Number with trailing zeros', () {
      expect(reverseNumber(1200), 21);
    });

    test('Zero', () {
      expect(reverseNumber(0), 0);
    });

    test('Negative number', () {
      expect(reverseNumber(-1234), -4321);
    });

    test('Negative single digit', () {
      expect(reverseNumber(-5), -5);
    });

    test('Negative with trailing zeros', () {
      expect(reverseNumber(-1200), -21);
    });

    test('Large number', () {
      expect(reverseNumber(987654321), 123456789);
    });

    test('Number ending with 9', () {
      expect(reverseNumber(109), 901);
    });

    test('Number with repeated digits', () {
      expect(reverseNumber(112233), 332211);
    });
  });
}
