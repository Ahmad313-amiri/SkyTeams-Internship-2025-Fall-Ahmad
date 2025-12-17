import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-13.dart';


void main() {

  test('2^3 = 8', () {
    expect(powerOfNumber(2, 3), 8);
  });

  test('5^0 = 1', () {
    expect(powerOfNumber(5, 0), 1);
  });

  test('0^5 = 0', () {
    expect(powerOfNumber(0, 5), 0);
  });
  test('negative exponent returns error', () {
    expect(powerOfNumber(2, -3), 'Enter positive number');
  });

  test('-2^3 = -8', () {
    expect(powerOfNumber(-2, 3), -8);
  });

  test('-2^4 = 16', () {
    expect(powerOfNumber(-2, 4), 16);
  });

  test('1^10 = 1', () {
    expect(powerOfNumber(1, 10), 1);
  });

  test('large exponent 2^10 = 1024', () {
    expect(powerOfNumber(2, 10), 1024);
  });

  test('large base 10^3 = 1000', () {
    expect(powerOfNumber(10, 3), 1000);
  });

}
