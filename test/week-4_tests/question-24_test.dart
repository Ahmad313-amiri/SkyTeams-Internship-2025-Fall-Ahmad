import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question24.dart';


void main() {
  group('K-th Largest Element (Manual Sort) Tests', () {

    test('Finds 2nd largest in normal array', () {
      final result = kthLargest([3, 2, 1, 5, 6, 4], 2);
      expect(result, 5);
    });

    test('Finds 1st largest element', () {
      final result = kthLargest([7, 7, 6, 6, 5], 1);
      expect(result, 7);
    });

    test('Finds last largest element', () {
      final result = kthLargest([10, 20, 30], 3);
      expect(result, 10);
    });

    test('Handles duplicates correctly', () {
      final result = kthLargest([1, 2, 2, 3, 3, 3], 4);
      expect(result, 2);
    });

    test('Single element array', () {
      final result = kthLargest([42], 1);
      expect(result, 42);
    });

    test('Throws error if k is out of bounds (0)', () {
      expect(() => kthLargest([1, 2, 3], 0), throwsArgumentError);
    });

    test('Throws error if k is out of bounds (greater than length)', () {
      expect(() => kthLargest([1, 2, 3], 4), throwsArgumentError);
    });

  });
}
