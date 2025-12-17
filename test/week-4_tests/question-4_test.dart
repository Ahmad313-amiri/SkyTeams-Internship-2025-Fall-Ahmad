import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question4.dart';

void main() {
  group('Intersection of Lists Tests', () {
    test('Example Test', () {
      expect(intersectionOfLists([1, 2, 3, 4], [3, 4, 5, 6]), [3, 4]);
    });

    test('No common elements', () {
      expect(intersectionOfLists([1, 2, 3], [4, 5, 6]), []);
    });

    test('With duplicates in lists', () {
      expect(intersectionOfLists([1, 2, 2, 3], [2, 2, 4]), [2]);
    });

    test('Both lists empty', () {
      expect(intersectionOfLists([], []), []);
    });

    test('Different order', () {
      var result = intersectionOfLists([5, 4, 3], [3, 4, 5]);
      expect(result.toSet(), {3, 4, 5});
    });
  });
}
