import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-14.dart';


void main() {

  test('factorial of 0', () {
    expect(computeFactorial(0), 1);
  });

  test('factorial of 1', () {
    expect(computeFactorial(1), 1);
  });

  test('factorial of 2', () {
    expect(computeFactorial(2), 2);
  });

  test('factorial of 3', () {
    expect(computeFactorial(3), 6);
  });

  test('factorial of 4', () {
    expect(computeFactorial(4), 24);
  });

  test('factorial of 5', () {
    expect(computeFactorial(5), 120);
  });

  test('factorial of 6', () {
    expect(computeFactorial(6), 720);
  });

  test('factorial of 10', () {
    expect(computeFactorial(10), 3628800);
  });

  test('negative number returns 1', () {
    expect(computeFactorial(-3), 1);
  });

  test('large number factorial 12', () {
    expect(computeFactorial(12), 479001600);
  });

}
