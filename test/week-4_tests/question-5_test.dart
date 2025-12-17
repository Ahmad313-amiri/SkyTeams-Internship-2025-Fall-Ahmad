

import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question5.dart';

void main() {
  group('Rerange List Comprehensive Tests', () {

    test('Example Test', () {
      expect(rerangeList([1, 2, 3, 4, 5, 6]), [2, 4, 6, 1, 3, 5]);
    });

    test('All even numbers', () {
      expect(rerangeList([2, 4, 6, 8]), [2, 4, 6, 8]);
    });

    test('All odd numbers', () {
      expect(rerangeList([1, 3, 5, 7]), [1, 3, 5, 7]);
    });

    test('Alternating even and odd', () {
      expect(rerangeList([1,2,3,4,5,6]), [2,4,6,1,3,5]);
      expect(rerangeList([2,1,4,3,6,5]), [2,4,6,1,3,5]);
    });

    test('Empty list', () {
      expect(rerangeList([]), []);
    });

    test('Single element (even)', () {
      expect(rerangeList([2]), [2]);
    });

    test('Single element (odd)', () {
      expect(rerangeList([1]), [1]);
    });

    test('Two elements (even then odd)', () {
      expect(rerangeList([2,1]), [2,1]);
    });

    test('Two elements (odd then even)', () {
      expect(rerangeList([1,2]), [2,1]);
    });

    test('Duplicates', () {
      expect(rerangeList([2,2,1,1,4,4,3,3]), [2,2,4,4,1,1,3,3]);
    });

    test('Large list with mixed numbers', () {
      var input = [5, 8, 1, 4, 9, 2, 6, 7];
      var expected = [8,4,2,6,5,1,9,7];
      expect(rerangeList(input), expected);
    });

    test('Negative numbers', () {
      var input = [-1,-2,-3,-4,0];
      var expected = [-2,-4,0,-1,-3];
      expect(rerangeList(input), expected);
    });

    test('Zeros only', () {
      expect(rerangeList([0,0,0]), [0,0,0]);
    });

    test('Zeros and odds', () {
      expect(rerangeList([0,1,3,0,5]), [0,0,1,3,5]);
    });

    test('Zeros and evens', () {
      expect(rerangeList([0,2,4,0,6]), [0,2,4,0,6]);
    });

  });
}
