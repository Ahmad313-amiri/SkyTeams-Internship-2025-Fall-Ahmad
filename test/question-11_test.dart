import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-11.dart';

void main() {

  group('isPrime Tests', () {
    test('prime 2', () {
      expect(isPrime(2), true);
    });

    test('prime 3', () {
      expect(isPrime(3), true);
    });

    test('not prime 1', () {
      expect(isPrime(1), false);
    });

    test('not prime 0', () {
      expect(isPrime(0), false);
    });

    test('not prime negative', () {
      expect(isPrime(-5), false);
    });

    test('not prime 9', () {
      expect(isPrime(9), false);
    });

    test('prime 97', () {
      expect(isPrime(97), true);
    });
  });

  group('listPrimeNumbers Tests', () {
    test('primes up to 10', () {
      expect(listPrimeNumbers(10), [2, 3, 5, 7]);
    });

    test('primes up to 1', () {
      expect(listPrimeNumbers(1), []);
    });

    test('primes up to 2', () {
      expect(listPrimeNumbers(2), [2]);
    });

    test('primes up to 3', () {
      expect(listPrimeNumbers(3), [2, 3]);
    });

    test('primes up to 20', () {
      expect(listPrimeNumbers(20), [2, 3, 5, 7, 11, 13, 17, 19]);
    });

    test('primes up to negative number', () {
      expect(listPrimeNumbers(-10), []);
    });

    test('large primes up to 50', () {
      expect(
        listPrimeNumbers(50),
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47],
      );
    });

    test('no primes when input is 0', () {
      expect(listPrimeNumbers(0), []);
    });
  });
}
