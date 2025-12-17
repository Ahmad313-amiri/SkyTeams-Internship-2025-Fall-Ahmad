import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-8.dart';


void main() {

  test('element exists in middle', () {
    expect(checkElements([3, 6, 9, 12], 6), 'Found');
  });

  test('element exists at start', () {
    expect(checkElements([10, 2, 3], 10), 'Found');
  });

  test('element exists at end', () {
    expect(checkElements([5, 8, 11], 11), 'Found');
  });

  test('element does not exist', () {
    expect(checkElements([1, 2, 3], 4), 'Not found');
  });

  test('empty list', () {
    expect(checkElements([], 5), 'Not found');
  });

  test('list with only one element - found', () {
    expect(checkElements([9], 9), 'Found');
  });

  test('list with only one element - not found', () {
    expect(checkElements([9], 2), 'Not found');
  });

  test('multiple occurrences should still return Found', () {
    expect(checkElements([2, 3, 2, 2], 2), 'Found');
  });

  test('search for negative number in list', () {
    expect(checkElements([-1, -5, -7], -5), 'Found');
  });

  test('search for negative number not found', () {
    expect(checkElements([-1, -5, -7], 3), 'Not found');
  });

  test('search zero when present', () {
    expect(checkElements([0, 2, 4], 0), 'Found');
  });

  test('search zero when absent', () {
    expect(checkElements([2, 4, 6], 0), 'Not found');
  });

  test('long list performance test', () {
    List<int> list = List.generate(1000, (i) => i);
    expect(checkElements(list, 999), 'Found');
  });

  test('long list but not found', () {
    List<int> list = List.generate(1000, (i) => i);
    expect(checkElements(list, 2000), 'Not found');
  });

}
