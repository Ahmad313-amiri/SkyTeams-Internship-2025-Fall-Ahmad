import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question1.dart';

void main() {
  group('swapVariables Comprehensive Tests', () {

    test('Swap positive numbers', () {
      expect(swapVariables(1, 2), [2, 1]);
      expect(swapVariables(100, 200), [200, 100]);
    });

    test('Swap negative numbers', () {
      expect(swapVariables(-1, -2), [-2, -1]);
      expect(swapVariables(-100, -200), [-200, -100]);
    });

    test('Swap mixed positive and negative', () {
      expect(swapVariables(5, -10), [-10, 5]);
      expect(swapVariables(-5, 10), [10, -5]);
    });

    test('Swap with zero', () {
      expect(swapVariables(0, 0), [0, 0]);
      expect(swapVariables(0, 10), [10, 0]);
      expect(swapVariables(10, 0), [0, 10]);
      expect(swapVariables(0, -10), [-10, 0]);
      expect(swapVariables(-10, 0), [0, -10]);
    });

    test('Swap identical numbers', () {
      expect(swapVariables(7, 7), [7, 7]);
      expect(swapVariables(-5, -5), [-5, -5]);
      expect(swapVariables(0, 0), [0, 0]);
    });

    test('Swap large numbers', () {
      expect(swapVariables(2147483647, -2147483648), [-2147483648, 2147483647]);
      expect(swapVariables(-2147483648, 2147483647), [2147483647, -2147483648]);
    });

  });
}







