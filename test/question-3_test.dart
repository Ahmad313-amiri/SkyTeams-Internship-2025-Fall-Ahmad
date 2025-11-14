import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-1/question-3.dart';

void main() {
  group('findLargestNum Function Tests', () {

    test('Finds largest number in list', () {
      expect(findLargestNum([3, 7, 2, 9, 4]), 9);
    });

    test('Works wiht a list of  number ', () {
      expect(findLargestNum([10, 2, 3, 1]), 10);
    });

    test('Works with negative numbers only', () {
      expect(findLargestNum([-5, -10, -3, -20]), -3);
    });

    test('Works with mixed positive and negative numbers', () {
      expect(findLargestNum([-1, 0, 50, -10, 7]), 50);
    });

    test('Works with duplicate numbers', () {
      expect(findLargestNum([4, 4, 4, 4]), 4);
    });

    test('Works with a single element list', () {
      expect(findLargestNum([8]), 8);
    });

  });
}