import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question11.dart';



void main() {
  group('Simple Calculator Tests', () {

    test('Addition (+)', () {
      expect(
        calculateNumbers(5, 3, '+'),
        'Sum of 5 and 3 is : 8',
      );
    });

    test('Subtraction (-)', () {
      expect(
        calculateNumbers(10, 4, '-'),
        'Miness of 10 and 4 is : 6',
      );
    });

    test('Multiplication (*)', () {
      expect(
        calculateNumbers(7, 3, '*'),
        'Multiply of 7 and 3 is : 21',
      );
    });

    test('Division (/)', () {
      expect(
        calculateNumbers(12, 4, '/'),
        'Devide of 12 and 4 is : 3.0',
      );
    });

    test('Division with remainder (/)', () {
      expect(
        calculateNumbers(7, 2, '/'),
        'Devide of 7 and 2 is : 3.5',
      );
    });

    test('Division by zero → should return error message', () {
      expect(
        calculateNumbers(10, 0, '/'),
        'Can not devide by zero',
      );
    });

    test('Invalid operator', () {
      expect(
        calculateNumbers(5, 5, '%'),
        'Invalide operator ',
      );
    });

    test('Addition with negative numbers', () {
      expect(
        calculateNumbers(-3, 7, '+'),
        'Sum of -3 and 7 is : 4',
      );
    });

    test('Multiplication with zero', () {
      expect(
        calculateNumbers(9, 0, '*'),
        'Multiply of 9 and 0 is : 0',
      );
    });

    test('Subtraction resulting negative', () {
      expect(
        calculateNumbers(3, 9, '-'),
        'Miness of 3 and 9 is : -6',
      );
    });
  });
}
