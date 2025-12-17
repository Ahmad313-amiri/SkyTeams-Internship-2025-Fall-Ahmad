import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-27.dart';


void main() {

  test('empty list returns empty', () {
    expect(findUniqueElement([]), []);
  });

  test('list with no duplicates', () {
    expect(findUniqueElement([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
  });

  test('list with some duplicates', () {
    expect(findUniqueElement([1, 2, 2, 3, 4, 4, 5]), [1, 2, 3, 4, 5]);
  });

  test('list with all duplicates', () {
    expect(findUniqueElement([7, 7, 7, 7]), [7]);
  });

  test('list with alternating duplicates', () {
    expect(findUniqueElement([1, 1, 2, 2, 3, 3]), [1, 2, 3]);
  });

  test('large list with duplicates', () {
    expect(findUniqueElement([10, 20, 20, 10, 30, 40, 30, 50]), [10, 20, 30, 40, 50]);
  });

}
