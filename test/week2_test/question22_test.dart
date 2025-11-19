import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question22.dart';

void main() {
  group('printEvenNumbers – Basic Tests', () {
    test('range with several even numbers', () {
      expect(printEvenNumbers(1, 10), equals('2, 4, 6, 8, 10'));
    });

    test('range starting at even number', () {
      expect(printEvenNumbers(2, 8), equals('2, 4, 6, 8'));
    });

    test('range starting at odd number', () {
      expect(printEvenNumbers(3, 9), equals('4, 6, 8'));
    });

    test('single even number in range', () {
      expect(printEvenNumbers(4, 4), equals('4'));
    });

    test('single odd number in range', () {
      expect(printEvenNumbers(5, 5), equals(''));
    });
  });

  group('printEvenNumbers – Negative ranges', () {
    test('negative to positive range', () {
      expect(printEvenNumbers(-5, 5), equals('-4, -2, 0, 2, 4'));
    });

    test('all negative range', () {
      expect(printEvenNumbers(-10, -2), equals('-10, -8, -6, -4, -2'));
    });
  });

  group('printEvenNumbers – Edge cases', () {
    test('start > end → empty result', () {
      expect(printEvenNumbers(10, 1), equals(''));
    });

    test('large ranges still work', () {
      expect(
        printEvenNumbers(1, 20),
        equals('2, 4, 6, 8, 10, 12, 14, 16, 18, 20'),
      );
    });
  });
}
