import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-24.dart';


void main() {

  test('0 rows', () {
    expect(generatePascalTriangle(0), []);
  });

  test('1 row', () {
    expect(generatePascalTriangle(1), [
      [1]
    ]);
  });

  test('2 rows', () {
    expect(generatePascalTriangle(2), [
      [1],
      [1, 1]
    ]);
  });

  test('3 rows', () {
    expect(generatePascalTriangle(3), [
      [1],
      [1, 1],
      [1, 2, 1]
    ]);
  });

  test('4 rows', () {
    expect(generatePascalTriangle(4), [
      [1],
      [1, 1],
      [1, 2, 1],
      [1, 3, 3, 1]
    ]);
  });

  test('5 rows', () {
    expect(generatePascalTriangle(5), [
      [1],
      [1, 1],
      [1, 2, 1],
      [1, 3, 3, 1],
      [1, 4, 6, 4, 1]
    ]);
  });

  test('negative rows returns empty', () {
    expect(generatePascalTriangle(-3), []);
  });

}
