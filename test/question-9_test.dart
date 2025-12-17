import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-9.dart';


void main() {

  test('count occurrences normally', () {
    expect(findOccurrences([2, 3, 2, 5, 2], 2), 3);
  });

  test('element not found', () {
    expect(findOccurrences([1, 2, 3], 9), 0);
  });

  test('single element - found', () {
    expect(findOccurrences([5], 5), 1);
  });

  test('single element - not found', () {
    expect(findOccurrences([5], 2), 0);
  });

  test('multiple occurrences', () {
    expect(findOccurrences([5, 5, 5, 5], 5), 4);
  });

  test('count zero inside list', () {
    expect(findOccurrences([0, 1, 0, 2], 0), 2);
  });

  test('negative numbers found', () {
    expect(findOccurrences([-1, -1, -2], -1), 2);
  });

  test('negative numbers not found', () {
    expect(findOccurrences([-1, -2], 5), 0);
  });

  test('long list occurrences', () {
    List<int> list = List.generate(500, (_) => 7);
    expect(findOccurrences(list, 7), 500);
  });

  test('long list but element absent', () {
    List<int> list = List.generate(500, (i) => i);
    expect(findOccurrences(list, 999), 0);
  });

  test('throws exception for empty list', () {
    expect(() => findOccurrences([], 5), throwsException);
  });

}
