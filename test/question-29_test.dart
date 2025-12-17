import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-29.dart';


void main() {

  test('two empty lists are equal', () {
    expect(areArraysEqual([], []), 'Equal');
  });

  test('two identical lists', () {
    expect(areArraysEqual([1, 2, 3], [1, 2, 3]), 'Equal');
  });

  test('lists with same elements but different order', () {
    expect(areArraysEqual([1, 2, 3], [3, 2, 1]), 'Not Equal');
  });

  test('lists with different lengths', () {
    expect(areArraysEqual([1, 2, 3], [1, 2]), 'Not Equal');
  });

  test('lists with different values', () {
    expect(areArraysEqual([1, 2, 3], [1, 2, 4]), 'Not Equal');
  });

  test('large identical lists', () {
    expect(areArraysEqual([1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]), 'Equal');
  });

}
