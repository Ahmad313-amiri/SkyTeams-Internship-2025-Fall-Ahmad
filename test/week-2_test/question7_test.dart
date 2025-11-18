import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question7.dart'; // مسیر فایل فانکشن

void main() {
  group('checkOddEven Tests', () {

    test('Zero should be even', () {
      expect(checkOddEven(0), 'Even');
    });

    test('Positive even numbers', () {
      expect(checkOddEven(2), 'Even');
      expect(checkOddEven(100), 'Even');
      expect(checkOddEven(1000000), 'Even');
    });

    test('Positive odd numbers', () {
      expect(checkOddEven(1), 'Odd');
      expect(checkOddEven(99), 'Odd');
      expect(checkOddEven(1234567), 'Odd');
    });

    test('Negative even numbers', () {
      expect(checkOddEven(-2), 'Even');
      expect(checkOddEven(-100), 'Even');
      expect(checkOddEven(-1000000), 'Even');
    });

    test('Negative odd numbers', () {
      expect(checkOddEven(-1), 'Odd');
      expect(checkOddEven(-99), 'Odd');
      expect(checkOddEven(-1234567), 'Odd');
    });

    test('Large numbers', () {
      expect(checkOddEven(2147483646), 'Even');
      expect(checkOddEven(2147483647), 'Odd');
    });

  });
}
