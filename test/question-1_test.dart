import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-1/question-1.dart';

void main() {

  group('addNums Function Tests', () {

    test('Positive numbers', () {
      expect(addNums(5, 7), 12);
      expect(addNums(10, 20), 30);
      expect(addNums(1000000000, 2000000000), 3000000000);
    });

    test('Negative numbers', () {
      expect(addNums(-5, -3), -8);
      expect(addNums(-10, 4), -6);
    });

    test('Zero values', () {
      expect(addNums(0, 0), 0);
      expect(addNums(5, 0), 5);
      expect(addNums(0, 9), 9);
    });


    test('Mixed positive & negative', () {
      expect(addNums(10, -3), 7);
      expect(addNums(-8, 2), -6);
    });

    test('Add identical numbers', () {
      expect(addNums(5, 5), 10);
      expect(addNums(-4, -4), -8);
    });

  });

}
