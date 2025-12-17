import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question22.dart';

void main() {
  group('Longest Palindromic Substring Tests', () {
    test('Example input', () {
      String result = longestPalindrome("babad");
      expect(["bab", "aba"].contains(result), true);
    });

    test('Even length palindrome', () {
      expect(longestPalindrome("cbbd"), "bb");
    });

    test('Single character string', () {
      expect(longestPalindrome("a"), "a");
    });

    test('Empty string', () {
      expect(longestPalindrome(""), "");
    });

    test('No palindrome longer than 1', () {
      expect(longestPalindrome("abc"), "c");
    });

    test('Entire string is palindrome', () {
      expect(longestPalindrome("racecar"), "racecar");
    });

    test('Palindrome at the end', () {
      expect(longestPalindrome("abcbad"), "abcba");
    });

    test('Palindrome at the start', () {
      expect(longestPalindrome("abacdfgdcaba"), "aba");
    });
  });
}