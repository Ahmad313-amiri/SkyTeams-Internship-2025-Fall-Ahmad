import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-18.dart';


void main() {

  test('pattern for 0', () {
    expect(rightAlignPatternPrinting(0), []);
  });

  test('pattern for 1', () {
    expect(rightAlignPatternPrinting(1), ["*"]);
  });

  test('pattern for 2', () {
    expect(rightAlignPatternPrinting(2), [" *", "**"]);
  });

  test('pattern for 3', () {
    expect(rightAlignPatternPrinting(3), ["  *", " **", "***"]);
  });

  test('pattern for 4', () {
    expect(rightAlignPatternPrinting(4), ["   *", "  **", " ***", "****"]);
  });

  test('pattern for 5', () {
    expect(rightAlignPatternPrinting(5), ["    *", "   **", "  ***", " ****", "*****"]);
  });

  test('negative input returns empty list', () {
    expect(rightAlignPatternPrinting(-3), []);
  });

}
