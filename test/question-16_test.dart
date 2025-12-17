import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-16.dart';

void main() {

  test('Fibonacci 0 terms returns empty list', () {
    expect(calculateFibonacci(0), []);
  });

  test('Fibonacci 1 term', () {
    expect(calculateFibonacci(1), [0]);
  });

  test('Fibonacci 2 terms', () {
    expect(calculateFibonacci(2), [0, 1]);
  });

  test('Fibonacci 3 terms', () {
    expect(calculateFibonacci(3), [0, 1, 1]);
  });

  test('Fibonacci 5 terms', () {
    expect(calculateFibonacci(5), [0, 1, 1, 2, 3]);
  });

  test('Fibonacci 7 terms', () {
    expect(calculateFibonacci(7), [0, 1, 1, 2, 3, 5, 8]);
  });

  test('Fibonacci negative input returns empty list', () {
    expect(calculateFibonacci(-5), []);
  });

}
