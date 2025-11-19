import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question21.dart';

void main() {
  group('calculateSumofDigits – Basic Tests', () {
    test('Zero should return 0', () {
      expect(calculateSumofDigits(0), equals(0));
    });

    test('Single digit numbers', () {
      expect(calculateSumofDigits(5), equals(5));
      expect(calculateSumofDigits(9), equals(9));
    });
  });

  group('calculateSumofDigits – Multi digit positive numbers', () {
    test('Simple two-digit numbers', () {
      expect(calculateSumofDigits(12), equals(3));
      expect(calculateSumofDigits(99), equals(18));
    });

    test('Three+ digit numbers', () {
      expect(calculateSumofDigits(123), equals(6));
      expect(calculateSumofDigits(4567), equals(22));
      expect(calculateSumofDigits(1001), equals(2));
    });
  });

  test('sum of digits of negative numbers', () {
    expect(calculateSumofDigits(-12), equals(3));
    expect(calculateSumofDigits(-505), equals(10));
    expect(calculateSumofDigits(-999), equals(27));
  });

  group('calculateSumofDigits – Edge Cases', () {
    test('Large numbers', () {
      expect(calculateSumofDigits(123456789), equals(45));
      expect(calculateSumofDigits(999999999), equals(81));
    });

    test('Very large int values', () {
      expect(calculateSumofDigits(9223372036854775807), equals(88));
    });
  });

  group('calculateSumofDigits – Random Stress Test', () {
    test('Random 1000 values', () {
      for (int i = 0; i < 1000; i++) {
        int value = i * 12345 - i * 7;

        int expected = value
            .toString()
            .split('')
            .map(int.parse)
            .reduce((a, b) => a + b);

        expect(calculateSumofDigits(value), equals(expected));
      }
    });
  });
}
