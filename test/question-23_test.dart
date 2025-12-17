import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-23.dart';

void main() {

  test('factorial of 0', () {
    expect(calculateFactorail(0), 1);
  });

  test('factorial of 1', () {
    expect(calculateFactorail(1), 1);
  });

  test('factorial of 2', () {
    expect(calculateFactorail(2), 2);
  });

  test('factorial of 3', () {
    expect(calculateFactorail(3), 6);
  });

  test('factorial of 4', () {
    expect(calculateFactorail(4), 24);
  });

  test('factorial of 5', () {
    expect(calculateFactorail(5), 120);
  });

  test('factorial of 6', () {
    expect(calculateFactorail(6), 720);
  });

  test('factorial of 10', () {
    expect(calculateFactorail(10), 3628800);
  });

}
