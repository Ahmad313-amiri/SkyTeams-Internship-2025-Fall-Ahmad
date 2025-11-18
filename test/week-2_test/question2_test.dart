import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question2.dart';

void main() {
  group('findMinMaxNum Tests', () {
    test('All positive numbers', () {
      expect(findMinMaxNum(3, 9, 1), '1,9');
      expect(findMinMaxNum(10, 5, 8), '5,10');
    });

    test('All negative numbers', () {
      expect(findMinMaxNum(-3, -7, -1), '-7,-1');
      expect(findMinMaxNum(-10, -5, -8), '-10,-5');
    });

    test('Mixed positive & negative numbers', () {
      expect(findMinMaxNum(-5, 10, 3), '-5,10');
      expect(findMinMaxNum(5, -10, 2), '-10,5');
      expect(findMinMaxNum(0, -1, 5), '-1,5');
    });

    test('All numbers are equal', () {
      expect(findMinMaxNum(2, 2, 2), '2,2');
      expect(findMinMaxNum(0, 0, 0), '0,0');
    });

    test('Two numbers equal (various cases)', () {
      expect(findMinMaxNum(10, 10, 5), '5,10');
      expect(findMinMaxNum(10, 5, 10), '5,10');
      expect(findMinMaxNum(5, 10, 10), '5,10');

      expect(findMinMaxNum(-3, -3, -7), '-7,-3');
      expect(findMinMaxNum(-7, -3, -3), '-7,-3');
    });

    test('Big numbers (large ints)', () {
      expect(findMinMaxNum(999999, 1, 500000), '1,999999');
      expect(findMinMaxNum(-999999, -1, -500000), '-999999,-1');
    });

    test('Zero included', () {
      expect(findMinMaxNum(0, 5, 10), '0,10');
      expect(findMinMaxNum(-5, 0, -10), '-10,0');
    });

    test('Largest number in the middle', () {
      expect(findMinMaxNum(3, 100, 5), '3,100');
    });

    test('Smallest number in the middle', () {
      expect(findMinMaxNum(10, -20, 5), '-20,10');
    });

    test('Descending order input', () {
      expect(findMinMaxNum(9, 5, 1), '1,9');
    });

    test('Ascending order input', () {
      expect(findMinMaxNum(1, 5, 9), '1,9');
    });

    test('Random tricky cases', () {
      expect(findMinMaxNum(8, 8, -8), '-8,8');
      expect(findMinMaxNum(-2, 100, 100), '-2,100');
      expect(findMinMaxNum(7, -7, 7), '-7,7');
    });
  });
}