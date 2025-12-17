import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-28.dart';


void main() {

  test('empty list returns empty', () {
    expect(removeDuplicates([]), []);
  });

  test('list with no duplicates', () {
    expect(removeDuplicates([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
  });

  test('list with some duplicates', () {
    expect(removeDuplicates([3, 1, 3, 5, 1]), [3, 1, 5]);
  });

  test('list with all duplicates', () {
    expect(removeDuplicates([7, 7, 7, 7]), [7]);
  });

  test('list with alternating duplicates', () {
    expect(removeDuplicates([1, 1, 2, 2, 3, 3]), [1, 2, 3]);
  });

  test('large list with duplicates', () {
    expect(removeDuplicates([10, 20, 20, 10, 30, 40, 30, 50]), [10, 20, 30, 40, 50]);
  });

}
