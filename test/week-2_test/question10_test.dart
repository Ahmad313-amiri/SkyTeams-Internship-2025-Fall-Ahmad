import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question10.dart';


void main() {
  group('determineLeapYear Tests', () {
    test('Year divisible by 400 → leap year', () {
      expect(determineLeapYear(2000), '2000 is leapYear');
    });

    test('Year divisible by 100 but not 400 → NOT leap year', () {
      expect(determineLeapYear(1900), '1900 is not leapYear');
    });

    test('Year divisible by 4 but not 100 → leap year', () {
      expect(determineLeapYear(2016), '2016 is leapYear');
    });

    test('Year not divisible by 4 → NOT leap year', () {
      expect(determineLeapYear(2019), '2019 is not a leapYear');
    });

    test('2020 should be leap year', () {
      expect(determineLeapYear(2020), '2020 is leapYear');
    });

    test('2021 should NOT be leap year', () {
      expect(determineLeapYear(2021), '2021 is not a leapYear');
    });

    test('Year 0 (edge case) → leap year', () {
      expect(determineLeapYear(0), '0 is leapYear');
    });

    test('Negative year (still divisible rule)', () {
      expect(determineLeapYear(-4), '-4 is leapYear');
    });

    test('Year divisible by 100 but not 400 (2100)', () {
      expect(determineLeapYear(2100), '2100 is not leapYear');
    });

    test('Year divisible by 400 (2400)', () {
      expect(determineLeapYear(2400), '2400 is leapYear');
    });
  });
}
