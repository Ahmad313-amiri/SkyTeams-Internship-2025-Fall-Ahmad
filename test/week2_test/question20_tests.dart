import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question20.dart';

void main() {
  group('countDigits – Basic Tests', () {
    test('Zero should return 1', () {
      expect(countDigits(0), equals(1));
    });

    test('Single digit numbers', () {
      expect(countDigits(5), equals(1));
      expect(countDigits(9), equals(1));
      expect(countDigits(-3), equals(1));
    });

    test('Two digit numbers', () {
      expect(countDigits(10), equals(2));
      expect(countDigits(99), equals(2));
      expect(countDigits(-42), equals(2));
    });
  });

  group('countDigits – Large Numbers', () {
    test('Three or more digits', () {
      expect(countDigits(100), equals(3));
      expect(countDigits(1234), equals(4));
      expect(countDigits(-98765), equals(5));
    });

    test('Very large integers', () {
      expect(countDigits(1234567890), equals(10));
      expect(countDigits(999999999999), equals(12));
    });
  });

  group('countDigits – Extreme Values & Boundaries', () {
    test('Minimum int (negative)', () {
      expect(countDigits(-9223372036854775808), equals(19));
    });

    test('Maximum int (positive)', () {
      expect(countDigits(9223372036854775807), equals(19));
    });
  });

  group('countDigits – Data Driven Tests', () {
    final Map<int, int> data = {
      1: 1,
      22: 2,
      333: 3,
      4444: 4,
      55555: 5,
      -111: 3,
      -22222: 5,
      1000000: 7,
    };

    data.forEach((input, expected) {
      test('countDigits($input) = $expected', () {
        expect(countDigits(input), equals(expected));
      });
    });
  });

  group('countDigits – Random Stress Test', () {
    test('Random 1000 numbers', () {
      for (int i = 0; i < 1000; i++) {
        int n = i * 93751 * -1 + i * 13;
        int absLen = n.abs().toString().length;
        expect(countDigits(n), equals(absLen));
      }
    });
  });
}
