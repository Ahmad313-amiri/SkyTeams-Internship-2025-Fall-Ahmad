import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-19.dart';


void main() {

  test('pattern for 0', () {
    expect(pyramidPattern(0), []);
  });

  test('pattern for 1', () {
    expect(pyramidPattern(1), ["*"]);
  });

  test('pattern for 2', () {
    expect(pyramidPattern(2), [" *", "***"]);
  });

  test('pattern for 3', () {
    expect(pyramidPattern(3), ["  *", " ***", "*****"]);
  });

  test('pattern for 4', () {
    expect(pyramidPattern(4), ["   *", "  ***", " *****", "*******"]);
  });

  test('pattern for 5', () {
    expect(pyramidPattern(5), ["    *", "   ***", "  *****", " *******", "*********"]);
  });

  test('negative input returns empty list', () {
    expect(pyramidPattern(-3), []);
  });

}
