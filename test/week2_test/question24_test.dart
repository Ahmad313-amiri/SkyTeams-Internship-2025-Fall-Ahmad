import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question24.dart';

void main() {
  group('findGCD – Basic Tests', () {
    test('GCD of equal numbers', () {
      expect(findGCD(5, 5), equals(5));
      expect(findGCD(12, 12), equals(12));
    });

    test('GCD of small numbers', () {
      expect(findGCD(8, 12), equals(4));
      expect(findGCD(15, 5), equals(5));
      expect(findGCD(18, 27), equals(9));
    });

    test('when one number is 1', () {
      expect(findGCD(1, 10), equals(1));
      expect(findGCD(25, 1), equals(1));
    });
  });

  group('findGCD – Cases with zero', () {
    test('x = 0, y = n', () {
      expect(findGCD(0, 10), equals(10));
    });

    test('x = n, y = 0', () {
      expect(findGCD(25, 0), equals(25));
    });
  });

  group('findGCD – Negative numbers', () {
    test('negative values should still work', () {
      expect(findGCD(-8, 12), equals(4));
      expect(findGCD(12, -8), equals(4));
      expect(findGCD(-18, -27), equals(9));
    });
  });

  group('findGCD – Prime numbers', () {
    test('prime pairs', () {
      expect(findGCD(7, 13), equals(1));
      expect(findGCD(17, 19), equals(1));
    });
  });

  group('findGCD – Larger composites', () {
    test('common divisor', () {
      expect(findGCD(100, 80), equals(20));
      expect(findGCD(36, 60), equals(12));
      expect(findGCD(81, 153), equals(9));
    });
  });

  group('findGCD – Random stress test', () {
    test('hundreds of random numbers', () {
      for (int i = 1; i < 500; i++) {
        for (int j = 1; j < 500; j++) {
          int expected = _gcdWithMath(i, j);
          expect(findGCD(i, j), equals(expected));
        }
      }
    });
  });
}

int _gcdWithMath(int a, int b) {
  a = a.abs();
  b = b.abs();
  while (b != 0) {
    int t = b;
    b = a % b;
    a = t;
  }
  return a;
}
