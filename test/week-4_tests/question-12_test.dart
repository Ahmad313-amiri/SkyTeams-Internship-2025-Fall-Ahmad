

import 'package:flutter_test/flutter_test.dart';

Map<String, int> characterFrequencyCounter(String input) {
  final Map<String, int> frequency = {};
  for (var char in input.split('')) {
    frequency[char] = (frequency[char] ?? 0) + 1;
  }
  return frequency;
}

void main() {
  group('Character Frequency Counter Tests', () {
    test('Normal string', () {
      expect(characterFrequencyCounter('banana'), {'b': 1, 'a': 3, 'n': 2});
      expect(characterFrequencyCounter('apple'), {'a': 1, 'p': 2, 'l': 1, 'e': 1});
    });

    test('Empty string', () {
      expect(characterFrequencyCounter(''), {});
    });

    test('Single character', () {
      expect(characterFrequencyCounter('x'), {'x': 1});
    });

    test('All unique characters', () {
      expect(characterFrequencyCounter('abc'), {'a': 1, 'b': 1, 'c': 1});
    });

    test('Case sensitivity', () {
      expect(characterFrequencyCounter('aA'), {'a': 1, 'A': 1});
    });

    test('Numbers and symbols', () {
      expect(characterFrequencyCounter('1123!@#'), {'1': 2, '2': 1, '3': 1, '!': 1, '@': 1, '#': 1});
    });
  });
}
