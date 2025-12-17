import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question2.dart';

void main() {
  group('mergeList Tests', () {

    test('Merge two sorted lists', () {
      expect(
        mergeList([1, 3, 4, 7], [2, 5, 6, 8]),
        [1, 2, 3, 4, 5, 6, 7, 8],
      );
    });

    test('First list empty', () {
      expect(
        mergeList([], [1, 2, 3]),
        [1, 2, 3],
      );
    });

    test('Second list empty', () {
      expect(
        mergeList([4, 5, 6], []),
        [4, 5, 6],
      );
    });

    test('Both lists empty', () {
      expect(
        mergeList([], []),
        [],
      );
    });

    test('Lists with duplicate values', () {
      expect(
        mergeList([1, 3, 5], [1, 2, 3]),
        [1, 1, 2, 3, 3, 5],
      );
    });

    test('Lists with negative numbers', () {
      expect(
        mergeList([-5, -1, 0], [-3, 2, 4]),
        [-5, -3, -1, 0, 2, 4],
      );
    });

    test('Lists with overlapping ranges', () {
      expect(
        mergeList([1, 2, 3], [2, 3, 4]),
        [1, 2, 2, 3, 3, 4],
      );
    });
  });
}
