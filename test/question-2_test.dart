import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-1/question-2.dart';

void main() {
  group('reverseString Function  tests', () {

    test('Reverses a normal string', () {
      expect(reverseString("hello"), "olleh");
    });

    test('Reverses a single character', () {
      expect(reverseString("a"), "a");
    });

    test('Reverses an empty string', () {
      expect(reverseString(""), "");
    });

    test('Reverses string with spaces', () {
      expect(reverseString("hello world"), "dlrow olleh");
    });

    test('Reverses string with numbers', () {
      expect(reverseString("12345"), "54321");
    });

    test('Reverses palindrome (same backwards)', () {
      expect(reverseString("level"), "level");
    });

  });
}