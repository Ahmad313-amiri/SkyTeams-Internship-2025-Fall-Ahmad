import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question11.dart';


void main() {
  group('Simple Calculator Tests', () {

    test('Addition test', () {
      expect(calculateNumbers(5, 3, '+'), 'Sum of 5 and 3 is : 8');
    });

    test('Subtraction test', () {
      expect(calculateNumbers(5, 3, '-'), 'Subtraction of 5 and 3 is : 2');
    });

    test('Multiplication test', () {
      expect(calculateNumbers(5, 3, '*'), 'Multiplication of 5 and 3 is : 15');
    });

    test('Division test', () {
      expect(calculateNumbers(6, 3, '/'), 'Division of 6 and 3 is : 2.0');
    });

    test('Division by zero test', () {
      expect(calculateNumbers(6, 0, '/'), 'Can not devide by zero');
    });

    test('Invalid operator test', () {
      expect(calculateNumbers(6, 3, '%'), 'No correct operator enter corect operator');
    });

  });
}
