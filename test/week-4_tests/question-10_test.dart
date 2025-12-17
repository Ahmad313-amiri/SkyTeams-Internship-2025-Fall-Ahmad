

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Unique Character Tests', () {
    test('All unique characters', () {
      expect(hasUniqueCharacters('abcdef'), true);
    });

    test('Duplicate characters', () {
      expect(hasUniqueCharacters('hello'), false);
      expect(hasUniqueCharacters('aabbcc'), false);
    });

    test('Single character string', () {
      expect(hasUniqueCharacters('x'), true);
    });

    test('Empty string', () {
      expect(hasUniqueCharacters(''), true);
    });

    test('Case sensitivity', () {
      expect(hasUniqueCharacters('Aa'), true);
      expect(hasUniqueCharacters('AaA'), false);
    });

    test('Numbers and symbols', () {
      expect(hasUniqueCharacters('123!@#'), true);
      expect(hasUniqueCharacters('1123'), false);
    });
  });
}

bool hasUniqueCharacters(String input) {
  Set<String> seen = {};
  for (int i = 0; i < input.length; i++) {
    if (seen.contains(input[i])) return false;
    seen.add(input[i]);
  }
  return true;
}
