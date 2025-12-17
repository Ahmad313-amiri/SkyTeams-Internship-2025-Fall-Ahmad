import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-15.dart';


void main() {

  test('153 is Armstrong', () {
    expect(isArmstrong(153), true);
  });

  test('123 is not Armstrong', () {
    expect(isArmstrong(123), false);
  });

  test('0 is Armstrong', () {
    expect(isArmstrong(0), true);
  });

  test('1 is Armstrong', () {
    expect(isArmstrong(1), true);
  });

  test('2 is Armstrong', () {
    expect(isArmstrong(2), true);
  });

  test('10 is not Armstrong', () {
    expect(isArmstrong(10), false);
  });

  test('370 is Armstrong', () {
    expect(isArmstrong(370), true);
  });

  test('371 is Armstrong', () {
    expect(isArmstrong(371), true);
  });

  test('407 is Armstrong', () {
    expect(isArmstrong(407), true);
  });

  test('100 is not Armstrong', () {
    expect(isArmstrong(100), false);
  });

  test('9474 is Armstrong', () {
    expect(isArmstrong(9474), true);
  });

  test('9475 is not Armstrong', () {
    expect(isArmstrong(9475), false);
  });

  test('negative number -153 is not Armstrong', () {
    expect(isArmstrong(-153), false);
  });

}
