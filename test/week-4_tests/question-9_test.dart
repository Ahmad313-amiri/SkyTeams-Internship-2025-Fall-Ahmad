
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('String Compression Tests', () {
    test('Normal case', () {
      expect(stringCompression('aabcccccaaa'), 'a2b1c5a3');
      expect(stringCompression('aaavddbb'), 'a3v1d2b2');
    });

    test('Single character string', () {
      expect(stringCompression('a'), 'a1');
    });

    test('All unique characters', () {
      expect(stringCompression('abcd'), 'a1b1c1d1');
    });

    test('Empty string', () {
      expect(stringCompression(''), '');
    });

    test('String with long repeats', () {
      expect(stringCompression('bbbbbbbbbb'), 'b10');
    });

    test('String with numbers and letters', () {
      expect(stringCompression('aa11bbb'), 'a2' '12' 'b3'); // توجه به تکرار اعداد
    });

    test('Case sensitive', () {
      expect(stringCompression('aaAA'), 'a2A2');
    });
  });
}

String stringCompression(String input) {
  if (input.isEmpty) return "";

  StringBuffer result = StringBuffer();
  int count = 1;

  for (int i = 0; i < input.length; i++) {
    if (i < input.length - 1 && input[i] == input[i + 1]) {
      count++;
    } else {
      result.write(input[i]);
      result.write(count);
      count = 1;
    }
  }

  return result.toString();
}
