import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-5.dart';

void main() {
  group('Find Largest Number Tests', () {
    test('Normal case', () {
      expect(findLargestNum([2, 8, 5, 3, 9]), 9);
    });

    test('All negative numbers', () {
      expect(findLargestNum([-5, -10, -3]), -3);
    });

    test('Single element', () {
      expect(findLargestNum([7]), 7);
    });

    test('Mixed positive and negative', () {
      expect(findLargestNum([-2, 0, 5, -10]), 5);
    });

    test('Empty list throws error', () {
      expect(() => findLargestNum([]), throwsArgumentError);
    });
  });
}
