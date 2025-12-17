import 'package:flutter_test/flutter_test.dart';


List<int> findFactors(int number) {
  int num = number.abs();
  List<int> factors = [];

  if (num == 0) return [0];

  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      factors.add(i);
    }
  }

  return factors;
}

void main() {
  group('Find Factors Tests', () {
    test('Positive number', () {
      expect(findFactors(12), [1, 2, 3, 4, 6, 12]);
    });

    test('Single digit', () {
      expect(findFactors(7), [1, 7]);
    });

    test('Number one', () {
      expect(findFactors(1), [1]);
    });

    test('Negative number', () {
      expect(findFactors(-12), [1, 2, 3, 4, 6, 12]);
    });

    test('Prime number', () {
      expect(findFactors(13), [1, 13]);
    });

    test('Number with repeated factors', () {
      expect(findFactors(36), [1, 2, 3, 4, 6, 9, 12, 18, 36]);
    });

    test('Zero', () {
      expect(findFactors(0), [0]);
    });

    test('Large number', () {
      expect(findFactors(100), [1, 2, 4, 5, 10, 20, 25, 50, 100]);
    });
  });
}
