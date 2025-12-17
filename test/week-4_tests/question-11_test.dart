

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CString Rotation Tests', () {
    test('Valid rotations', () {
      expect(isStringRotation('waterbottle', 'erbottlewat'), true);
      expect(isStringRotation('hello', 'llohe'), true);
      expect(isStringRotation('abcde', 'deabc'), true);
    });

    test('Invalid rotations', () {
      expect(isStringRotation('hello', 'olelh'), false);
      expect(isStringRotation('abc', 'cabd'), false);
      expect(isStringRotation('abc', 'abcd'), false);
    });

    test('Edge cases', () {
      expect(isStringRotation('', ''), true);
      expect(isStringRotation('a', 'a'), true);
      expect(isStringRotation('a', ''), false);
    });
  });
}

bool isStringRotation(String s1, String s2) {
  if (s1.length != s2.length) return false;
  String combined = s1 + s1;
  return combined.contains(s2);
}
