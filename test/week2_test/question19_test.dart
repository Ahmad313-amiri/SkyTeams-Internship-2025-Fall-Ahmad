import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question19.dart';

void main() {
  group('Reverse Number Tests', () {
    test('Reverse a normal number', () {
      expect(reverseNumber(1234), 4321);
    });

    test('Reverse a single digit number', () {
      expect(reverseNumber(7), 7);
    });

    test('Reverse a number ending with zero', () {
      expect(reverseNumber(1200), 21);
    });

    test('Reverse zero', () {
      expect(reverseNumber(0), 0);
    });

    test('Reverse a palindrome number', () {
      expect(reverseNumber(1221), 1221);
    });

    test('Reverse a two digit number', () {
      expect(reverseNumber(45), 54);
    });
  });
}
