import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question15.dart';

void main() {
  group('Kadane Algorithm Tests', () {

    test('Returns correct max sum for mixed numbers', () {
      final list = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
      final result = kadaneAlgorithm(list);

      expect(result, 6);
    });

    test('Returns correct max sum for all negative numbers', () {
      final list = [-8, -3, -6, -2, -5, -4];
      final result = kadaneAlgorithm(list);

      expect(result, -2);
    });

    test('Returns correct max sum for all positive numbers', () {
      final list = [1, 2, 3, 4, 5];
      final result = kadaneAlgorithm(list);

      expect(result, 15);
    });

    test('Returns correct result for single element list', () {
      final list = [7];
      final result = kadaneAlgorithm(list);

      expect(result, 7);
    });

  });
}
