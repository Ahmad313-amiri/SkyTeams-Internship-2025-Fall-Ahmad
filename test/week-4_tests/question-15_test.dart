import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question15.dart';

void main() {
  group('Kadane Algorithm Tests', () {
    test('Example array', () {
      expect(kadaneAlgorithm([-2,1,-3,4,-1,2,1,-5,4]), 6);
    });

    test('Empty array', () {
      expect(kadaneAlgorithm([]), 0);
    });

    test('All negative numbers', () {
      expect(kadaneAlgorithm([-5, -1, -8]), -1);
      expect(kadaneAlgorithm([-2, -3, -4]), -2);
    });

    test('All positive numbers', () {
      expect(kadaneAlgorithm([1, 2, 3, 4]), 10);
      expect(kadaneAlgorithm([5, 10, 20]), 35);
    });

    test('Mixed positive and negative', () {
      expect(kadaneAlgorithm([2, -1, 2, 3, 4, -5]), 10);
      expect(kadaneAlgorithm([-2, -3, 4, -1, -2, 1, 5, -3]), 7);
    });

    test('Single element array', () {
      expect(kadaneAlgorithm([5]), 5);
      expect(kadaneAlgorithm([-5]), -5);
    });

    test('Array with zeroes', () {
      expect(kadaneAlgorithm([0, -3, 5, -2, 0, 4]), 7);
      expect(kadaneAlgorithm([0, 0, 0]), 0);
    });

    test('Largest subarray at start', () {
      expect(kadaneAlgorithm([5, 4, -1, -2, -3]), 9);
    });

    test('Largest subarray at end', () {
      expect(kadaneAlgorithm([-5, -4, 1, 2, 3]), 6);
    });

    test('Multiple subarrays with same max sum', () {
      expect(kadaneAlgorithm([1, -1, 1, -1, 1, -1, 1]), 1);
    });
  });
}
