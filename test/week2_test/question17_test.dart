import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question17.dart';

void main() {
  group('Sum of first N natural numbers tests', () {
    test('Sum of 5 numbers', () {
      expect(sumOfNaturalNumbers(5), 15);
    });

    test('Sum of 1 number', () {
      expect(sumOfNaturalNumbers(1), 1);
    });

    test('Sum of 10 numbers', () {
      expect(sumOfNaturalNumbers(10), 55);
    });

    test('Sum of 0 numbers', () {
      expect(sumOfNaturalNumbers(0), 0);
    });

    test('Sum of 100 numbers', () {
      expect(sumOfNaturalNumbers(100), 5050);
    });
  });
}
