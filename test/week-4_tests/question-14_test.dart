import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question14.dart';

void main() {
  group('Permutations of String Tests', () {
    test('Basic test', () {
      expect(permutationsOfString('a'), ['a']);
      expect(permutationsOfString('ab'), ['ab', 'ba']);
      expect(permutationsOfString('abc'), ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']);
    });

    test('Empty string', () {
      expect(permutationsOfString(''), ['']);
    });

    test('String with duplicate characters', () {
      expect(permutationsOfString('aab'), ['aab', 'aba', 'aab', 'aba', 'baa', 'baa']);
    });
  });
}
