import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-17.dart';


void main() {

  test('pattern for 0', () {
    expect(patternPrinting(0), []);
  });

  test('pattern for 1', () {
    expect(patternPrinting(1), ["*"]);
  });

  test('pattern for 2', () {
    expect(patternPrinting(2), ["*", "**"]);
  });

  test('pattern for 3', () {
    expect(patternPrinting(3), ["*", "**", "***"]);
  });

  test('pattern for 4', () {
    expect(patternPrinting(4), ["*", "**", "***", "****"]);
  });

  test('pattern for 5', () {
    expect(patternPrinting(5), ["*", "**", "***", "****", "*****"]);
  });

  test('negative input returns empty list', () {
    expect(patternPrinting(-3), []);
  });

}
