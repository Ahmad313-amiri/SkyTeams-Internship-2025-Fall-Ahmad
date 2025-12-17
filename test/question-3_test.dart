import 'package:flutter_test/flutter_test.dart';


int sumOfDigits(int number) {
  int sum = 0;
  int num = number.abs();

  if (num == 0) return 0;

  while (num != 0) {
    int remainder = num % 10;
    sum += remainder;
    num ~/= 10;
  }

  return sum;
}

void main() {
  group('Sum of Digits Tests', () {
    test('Positive number', () {
      expect(sumOfDigits(12345), 15);
    });

    test('Zero', () {
      expect(sumOfDigits(0), 0);
    });

    test('Single digit', () {
      expect(sumOfDigits(7), 7);
    });

    test('Number with zeros', () {
      expect(sumOfDigits(10203), 6);
    });

    test('Negative number', () {
      expect(sumOfDigits(-12345), 15);
    });

    test('Negative single digit', () {
      expect(sumOfDigits(-8), 8);
    });

    test('Large number', () {
      expect(sumOfDigits(987654321), 45);
    });

    test('Number ending with zero', () {
      expect(sumOfDigits(1200), 3);
    });

    test('Number with repeated digits', () {
      expect(sumOfDigits(112233), 12);
    });
  });
}
