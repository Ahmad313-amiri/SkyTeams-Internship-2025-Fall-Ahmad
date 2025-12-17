import 'package:flutter_test/flutter_test.dart';

int countVowels(String input) {
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    var ch = input[i].toLowerCase();
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      count++;
    }
  }

  return count;
}

void main() {
  group('Vowel Counting Tests', () {
    test('Normal sentence', () {
      expect(countVowels("Sky Teams Internship"), 5);
    });

    test('Empty string', () {
      expect(countVowels(""), 0);
    });

    test('No vowels', () {
      expect(countVowels("bcdfg"), 0);
    });

    test('Only vowels', () {
      expect(countVowels("aeiouAEIOU"), 10);
    });

    test('With numbers and special chars', () {
      expect(countVowels("123!@#aeIO"), 4);
    });

    test('Long mixed sentence', () {
      expect(countVowels("Flutter development is fun and challenging!"), 12);
    });
  });
}
