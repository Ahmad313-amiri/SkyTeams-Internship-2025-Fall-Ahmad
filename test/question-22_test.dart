import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-22.dart';


void main() {

  test('collatz sequence for 1', () {
    expect(collatzSequence(1), '1(Steps : 0)');
  });

  test('collatz sequence for 2', () {
    expect(collatzSequence(2), '2 -> 1 (Steps : 1)');
  });

  test('collatz sequence for 3', () {
    expect(collatzSequence(3), '3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 (Steps : 7)');
  });

  test('collatz sequence for 6', () {
    expect(collatzSequence(6), '6 -> 3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 (Steps : 8)');
  });

  test('collatz sequence for 7', () {
    expect(collatzSequence(7), '7 -> 22 -> 11 -> 34 -> 17 -> 52 -> 26 -> 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 (Steps : 16)');
  });

  test('collatz sequence for 10', () {
    expect(collatzSequence(10), '10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 (Steps : 6)');
  });

  test('collatz sequence for 19', () {
    expect(collatzSequence(19), '19 -> 58 -> 29 -> 88 -> 44 -> 22 -> 11 -> 34 -> 17 -> 52 -> 26 -> 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1 (Steps : 20)');
  });

}
