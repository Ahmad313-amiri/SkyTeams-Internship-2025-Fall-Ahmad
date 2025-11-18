import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question6.dart';

void main() {
  group('calculateTime Tests', () {
    test('3665 seconds', () {
      expect(calculateTime(3665), '1 hr, 1 min, 5 sec');
    });

    test('0 seconds', () {
      expect(calculateTime(0), '0 hr, 0 min, 0 sec');
    });

    test('59 seconds', () {
      expect(calculateTime(59), '0 hr, 0 min, 59 sec');
    });

    test('60 seconds', () {
      expect(calculateTime(60), '0 hr, 1 min, 0 sec');
    });

    test('3600 seconds', () {
      expect(calculateTime(3600), '1 hr, 0 min, 0 sec');
    });

    test('86399 seconds', () {
      expect(calculateTime(86399), '23 hr, 59 min, 59 sec');
    });

    test('86400 seconds', () {
      expect(calculateTime(86400), '24 hr, 0 min, 0 sec');
    });
  });
}