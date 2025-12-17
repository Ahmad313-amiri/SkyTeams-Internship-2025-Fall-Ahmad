import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question1.dart';

void main() {
  group('findSecondLargest Tests', () {

    test('Normal list', () {
      expect(findSecondLargest([10, 20, 4, 45, 99]), 45);
    });

    test('List with duplicates', () {
      expect(findSecondLargest([5, 5, 3, 2]), 3);
    });

    test('Only two elements', () {
      expect(findSecondLargest([9, 1]), 1);
    });

    test('All elements equal → no second largest', () {
      expect(findSecondLargest([7, 7, 7]), null);
    });

    test('Less than 2 elements', () {
      expect(findSecondLargest([5]), null);
    });

    test('Negative numbers', () {
      expect(findSecondLargest([-10, -2, -30, -1]), -2);
    });

    test('Ascending order', () {
      expect(findSecondLargest([1, 2, 3, 4, 5]), 4);
    });

    test('Descending order', () {
      expect(findSecondLargest([9, 8, 7, 6]), 8);
    });

  });
}