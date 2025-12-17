import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-26.dart';


void main() {

  test('decimal 0 to binary', () {
    expect(convertToBinary(0), '0');
  });

  test('decimal 1 to binary', () {
    expect(convertToBinary(1), '1');
  });

  test('decimal 2 to binary', () {
    expect(convertToBinary(2), '10');
  });

  test('decimal 5 to binary', () {
    expect(convertToBinary(5), '101');
  });

  test('decimal 10 to binary', () {
    expect(convertToBinary(10), '1010');
  });

  test('decimal 15 to binary', () {
    expect(convertToBinary(15), '1111');
  });

  test('decimal 32 to binary', () {
    expect(convertToBinary(32), '100000');
  });

  test('decimal 255 to binary', () {
    expect(convertToBinary(255), '11111111');
  });

  test('decimal 1023 to binary', () {
    expect(convertToBinary(1023), '1111111111');
  });

}
