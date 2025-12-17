
import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question6.dart';

void main() {
  group('Binary Search Comprehensive Tests', () {

    test('Target at beginning', () {
      expect(binarySearch([1, 2, 3, 4, 5], 1), 0);
    });

    test('Target at end', () {
      expect(binarySearch([1, 2, 3, 4, 5], 5), 4);
    });

    test('Target in middle', () {
      expect(binarySearch([1, 2, 3, 4, 5], 3), 2);
    });

    test('Target in even sized array', () {
      expect(binarySearch([2, 4, 6, 8], 6), 2);
    });

    test('Target negative number', () {
      expect(binarySearch([-10, -5, 0, 5, 10], -5), 1);
    });

    test('Target zero', () {
      expect(binarySearch([-2, 0, 2], 0), 1);
    });

    test('Target smaller than all', () {
      expect(binarySearch([2, 4, 6, 8], 0), -1);
    });

    test('Target larger than all', () {
      expect(binarySearch([2, 4, 6, 8], 10), -1);
    });

    test('Target between elements', () {
      expect(binarySearch([1, 3, 5, 7, 9], 6), -1);
    });

    test('Empty array', () {
      expect(binarySearch([], 1), -1);
    });

    test('Single element array, target absent', () {
      expect(binarySearch([10], 5), -1);
    });


    test('Single element array, target present', () {
      expect(binarySearch([10], 10), 0);
    });


    test('Two elements, target first', () {
      expect(binarySearch([5, 10], 5), 0);
    });

    test('Two elements, target second', () {
      expect(binarySearch([5, 10], 10), 1);
    });

    test('Two elements, target absent', () {
      expect(binarySearch([5, 10], 7), -1);
    });


    test('Mixed negative and positive, target present', () {
      expect(binarySearch([-3, -2, 0, 1, 4], 1), 3);
    });

    test('Mixed negative and positive, target absent', () {
      expect(binarySearch([-3, -2, 0, 1, 4], 2), -1);
    });

    test('Array with duplicates, target present', () {
      var arr = [1, 2, 2, 2, 3, 4];
      int idx = binarySearch(arr, 2);
      expect(arr[idx], 2);
    });

    test('Array with duplicates, target absent', () {
      expect(binarySearch([1, 2, 2, 2, 3, 4], 5), -1);
    });


    test('Large array, target present', () {
      var arr = List.generate(1000, (i) => i * 2);
      expect(binarySearch(arr, 1000), 500);
    });

    test('Large array, target absent', () {
      var arr = List.generate(1000, (i) => i * 2);
      expect(binarySearch(arr, 1001), -1);
    });

  });
}
