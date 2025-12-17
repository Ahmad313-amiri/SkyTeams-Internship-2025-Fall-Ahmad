import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-7.dart';


void main() {
  test('sum of empty list', () {
    expect(findSumOfElements([]), 0);
  });

  test('sum of single element', () {
    expect(findSumOfElements([5]), 5);
  });

  test('sum of normal list', () {
    expect(findSumOfElements([1, 3, 4]), 8);
  });

  test('sum of list with zeros', () {
    expect(findSumOfElements([0, 0, 0]), 0);
  });

  test('sum of negative numbers', () {
    expect(findSumOfElements([-1, -2, -3]), -6);
  });

  test('sum of mixed positive and negative numbers', () {
    expect(findSumOfElements([5, -3, 2, -1]), 3);
  });

  test('sum with large values', () {
    expect(findSumOfElements([1000000, 2000000, 3000000]), 6000000);
  });

  test('sum with repeated numbers', () {
    expect(findSumOfElements([2, 2, 2, 2, 2]), 10);
  });

  test('sum of long list (stress test)', () {
    expect(findSumOfElements(List.generate(1000, (i) => 1)), 1000);
  });

  test('sum of alternating numbers', () {
    expect(findSumOfElements([1, -1, 1, -1, 1, -1]), 0);
  });

  test('sum of list containing max int values', () {
    expect(findSumOfElements([2147483647, 1]), 2147483648);
  });

  test('sum containing negative large values', () {
    expect(findSumOfElements([-1000000, -2000000, 500000]), -2500000);
  });
}
