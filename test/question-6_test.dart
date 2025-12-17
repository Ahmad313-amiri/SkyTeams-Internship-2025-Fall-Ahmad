import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-6.dart';

void main() {
  group('Find Smallest Element Tests', () {
    test('Normal case', () {
      expect(findSmallestElement([4, 7, 1, 9, 2]), 1);
    });

    test('All negative numbers', () {
      expect(findSmallestElement([-5, -10, -3]), -10);
    });

    test('Single element', () {
      expect(findSmallestElement([7]), 7);
    });

    test('Mixed positive and negative', () {
      expect(findSmallestElement([-2, 0, 5, -10]), -10);
    });

    test('Empty list throws exception', () {
      expect(() => findSmallestElement([]), throwsException);
    });
  });
}
