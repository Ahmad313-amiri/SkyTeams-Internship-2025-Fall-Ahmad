import 'package:flutter_test/flutter_test.dart';


void main() {
  group('String Pattern Matching Tests', () {
    test('Basic matching', () {
      expect(stringPatternMatching("abba", "dog cat cat dog"), true);
      expect(stringPatternMatching("abba", "dog cat cat fish"), false);
    });

    test('All same characters', () {
      expect(stringPatternMatching("aaaa", "dog dog dog dog"), true);
      expect(stringPatternMatching("aaaa", "dog dog dog cat"), false);
    });

    test('Single character pattern', () {
      expect(stringPatternMatching("a", "dog"), true);
      expect(stringPatternMatching("a", "dog cat"), false);
    });

    test('Different lengths', () {
      expect(stringPatternMatching("ab", "dog"), false);
      expect(stringPatternMatching("abc", "dog cat"), false);
    });

    test('Words repeated incorrectly', () {
      expect(stringPatternMatching("abba", "dog dog dog dog"), false);
    });

    test('Case sensitivity', () {
      expect(stringPatternMatching("abba", "Dog cat cat dog"), false); // 'Dog' != 'dog'
    });
  });
}

bool stringPatternMatching(String pattern, String sentence) {
  List<String> words = sentence.split(' ');
  if (pattern.length != words.length) return false;

  Map<String, String> charToWord = {};
  Map<String, String> wordToChar = {};

  for (int i = 0; i < pattern.length; i++) {
    String c = pattern[i];
    String w = words[i];

    if (charToWord.containsKey(c) && charToWord[c] != w) return false;
    if (wordToChar.containsKey(w) && wordToChar[w] != c) return false;

    charToWord[c] = w;
    wordToChar[w] = c;
  }

  return true;
}
