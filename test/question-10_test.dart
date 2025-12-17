import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-10.dart';


void main() {

  test('prime number 17', () {
    expect(definePrimeNum(17), 'Prime');
  });

  test('prime number 2', () {
    expect(definePrimeNum(2), 'Prime');
  });

  test('prime number 3', () {
    expect(definePrimeNum(3), 'Prime');
  });

  test('not prime number 20', () {
    expect(definePrimeNum(20), 'Not Prime');
  });

  test('not prime number 100', () {
    expect(definePrimeNum(100), 'Not Prime');
  });

  test('not prime odd number 9', () {
    expect(definePrimeNum(9), 'Not Prime');
  });

  test('number <= 1 returns Not Found - zero', () {
    expect(definePrimeNum(0), 'Not Found');
  });

  test('number <= 1 returns Not Found - negative', () {
    expect(definePrimeNum(-10), 'Not Found');
  });

  test('number <= 1 returns Not Found - one', () {
    expect(definePrimeNum(1), 'Not Found');
  });

  test('large prime number', () {
    expect(definePrimeNum(101), 'Prime');
  });

  test('large non-prime number', () {
    expect(definePrimeNum(121), 'Not Prime');
  });

  test('prime near high boundary', () {
    expect(definePrimeNum(97), 'Prime');
  });

  test('non-prime near high boundary', () {
    expect(definePrimeNum(99), 'Not Prime');
  });

}
