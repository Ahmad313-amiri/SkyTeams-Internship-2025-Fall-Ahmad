import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-30.dart';


void main() {

  test('missing number in middle', () {
    expect(findMissingNumber([1, 2, 4, 5]), 3);
  });

  test('missing first number', () {
    expect(findMissingNumber([2, 3, 4, 5]), 1);
  });

  test('missing last number', () {
    expect(findMissingNumber([1, 2, 3, 4]), 5);
  });

  test('array with two elements missing one', () {
    expect(findMissingNumber([1]), 2);
  });


  test('array with only one element', () {
    expect(findMissingNumber([1]), 2);
  });

  test('array with consecutive numbers missing in the middle', () {
    List<int> arr = [1, 2, 3, 5, 6];
    expect(findMissingNumber(arr), 4);
  });

}
