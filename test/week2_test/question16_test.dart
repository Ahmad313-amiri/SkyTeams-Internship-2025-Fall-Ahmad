import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question16.dart';

void main() {
  group('Print Numbers String Comprehensive Tests', () {
    test('Output starts with 1 and ends with 100', () {
      String result = printNumbers();
      expect(result.startsWith('1'), true);
      expect(result.endsWith('100'), true);
    });

    test('Output contains specific sample numbers', () {
      String result = printNumbers();
      expect(result.contains('25'), true);
      expect(result.contains('50'), true);
      expect(result.contains('75'), true);
    });

    test('Output splits correctly into 100 numbers', () {
      String result = printNumbers();
      List<String> nums = result.split(', ');
      expect(nums.length, 100);
      expect(nums.first, '1');
      expect(nums.last, '100');
    });

    test('All numbers are sequential from 1 to 100', () {
      String result = printNumbers();
      List<String> nums = result.split(', ');
      for (int i = 0; i < nums.length; i++) {
        expect(nums[i], (i + 1).toString());
      }
    });

    test('No extra commas or spaces at start/end', () {
      String result = printNumbers();
      expect(result.startsWith(','), false);
      expect(result.endsWith(', '), false);
    });

    test('Output length reasonable (string length check)', () {
      String result = printNumbers();
      expect(result.length, equals(390));
    });
  });
}
