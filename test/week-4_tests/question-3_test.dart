import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question3.dart';


void main() {
  group('Rotate Array K Times to the Right', ()
  {
    test('Normal case', () {
      List<int> nums = [1, 2, 3, 4, 5];
      finalRotated(nums, 2);
      expect(nums, [4, 5, 1, 2, 3]);
    });

    test('K equals array length', () {
      List<int> nums = [1, 2, 3, 4];
      finalRotated(nums, 4);
      expect(nums, [1, 2, 3, 4]);
    });

    test('K greater than array length', () {
      List<int> nums = [1, 2, 3, 4, 5];
      finalRotated(nums, 7);
      expect(nums, [4, 5, 1, 2, 3]);
    });

    test('K is 1', () {
      List<int> nums = [10, 20, 30];
      finalRotated(nums, 1);
      expect(nums, [30, 10, 20]);
    });

    test('K is 0', () {
      List<int> nums = [5, 6, 7];
      finalRotated(nums, 0);
      expect(nums, [5, 6, 7]);
    });

    test('Single element array', () {
      List<int> nums = [99];
      finalRotated(nums, 3);
      expect(nums, [99]);
    });

    test('Empty array', () {
      List<int> nums = [];
      finalRotated(nums, 2);
      expect(nums, []);
    });
  });

}