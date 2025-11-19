import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question14.dart';

void main() {
  test('Vowel characters', () {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    for (String ch in vowels) {
      expect(checkCharacterType(ch), 'Vowel');
    }
  });

  test('Consonant characters', () {
    List<String> consonants = [
      'b',
      'c',
      'd',
      'f',
      'g',
      'h',
      'j',
      'k',
      'l',
      'm',
      'n',
      'p',
      'q',
      'r',
      's',
      't',
      'v',
      'w',
      'x',
      'y',
      'z',
      'B',
      'C',
      'D',
      'F',
      'G',
      'H',
      'J',
      'K',
      'L',
      'M',
      'N',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'V',
      'W',
      'X',
      'Y',
      'Z',
    ];
    for (String ch in consonants) {
      expect(checkCharacterType(ch), 'Consonant');
    }
  });

  test('Digit characters', () {
    for (int i = 0; i <= 9; i++) {
      expect(checkCharacterType(i.toString()), 'Digit');
    }
  });

  test('Special characters', () {
    List<String> specials = [
      '!',
      '@',
      '#',
      '\$',
      '%',
      '^',
      '&',
      '*',
      '(',
      ')',
      '-',
      '+',
      '=',
      '/',
      '\\',
      '|',
      '~',
      '`',
      ' ',
    ];
    for (String ch in specials) {
      expect(checkCharacterType(ch), 'Special character');
    }
  });

  test('Input length > 1', () {
    List<String> inputs = ['ab', '12', 'Hello', '!@', '#\$%', 'Aa'];
    for (String input in inputs) {
      expect(checkCharacterType(input), 'Enter a single character');
    }
  });

  test('Non-printable characters', () {
    List<String> nonPrintable = ['\n', '\t', '\r'];
    for (String ch in nonPrintable) {
      expect(checkCharacterType(ch), 'Special character');
    }
  });

  test('Mixed characters', () {
    Map<String, String> testCases = {
      'a': 'Vowel',
      'B': 'Consonant',
      '7': 'Digit',
      '#': 'Special character',
      ' ': 'Special character',
      'E': 'Vowel',
      'z': 'Consonant',
      '\n': 'Special character',
      '12': 'Enter a single character',
    };

    testCases.forEach((key, value) {
      expect(checkCharacterType(key), value);
    });
  });
}
