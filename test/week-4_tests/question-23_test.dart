import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question23.dart';


void main() {
  group('Top K Frequent Elements Tests', () {

    test('Returns correct top 2 frequent elements', () {
      final result = topKFrequent([1, 1, 1, 2, 2, 3], 2);
      expect(result, [1, 2]);
    });

    test('Returns correct top 3 frequent elements', () {
      final result = topKFrequent([4, 4, 4, 1, 1, 2, 2, 2, 3], 3);
      expect(result, [4, 2, 1]);
    });

    test('Works with single element list', () {
      final result = topKFrequent([7], 1);
      expect(result, [7]);
    });

    test('Works when all elements are unique', () {
      final result = topKFrequent([1, 2, 3, 4], 2);
      expect(result.length, 2);
      expect(result.contains(1), true);
      expect(result.contains(2), true);
    });

    test('k equals number of unique elements', () {
      final result = topKFrequent([5, 5, 6, 6], 2);
      expect(result, [5, 6]);
    });
  });
}
