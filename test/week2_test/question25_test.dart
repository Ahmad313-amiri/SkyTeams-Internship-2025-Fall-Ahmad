import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question25.dart';

void main() {
  group('GCD Tests', () {
    test('GCD of equal numbers', () {
      expect(findGCD(5, 5), equals(5));
      expect(findGCD(-7, -7), equals(7));
    });

    test('GCD of small numbers', () {
      expect(findGCD(8, 12), equals(4));
      expect(findGCD(15, 5), equals(5));
      expect(findGCD(18, 27), equals(9));
    });

    test('GCD with zero', () {
      expect(findGCD(0, 10), equals(10));
      expect(findGCD(25, 0), equals(25));
      expect(findGCD(0, 0), equals(0));
    });

    test('GCD of prime numbers', () {
      expect(findGCD(7, 13), equals(1));
      expect(findGCD(17, 19), equals(1));
    });

    test('GCD with negative numbers', () {
      expect(findGCD(-8, 12), equals(4));
      expect(findGCD(12, -8), equals(4));
      expect(findGCD(-18, -27), equals(9));
    });
  });

  group('LCM Tests', () {
    test('LCM of positive numbers', () {
      expect(findLCM(12, 18), equals(36));
      expect(findLCM(7, 5), equals(35));
      expect(findLCM(21, 6), equals(42));
    });

    test('LCM with zero', () {
      expect(findLCM(0, 5), equals(0));
      expect(findLCM(7, 0), equals(0));
      expect(findLCM(0, 0), equals(0));
    });

    test('LCM with negative numbers', () {
      expect(findLCM(-12, 18), equals(36));
      expect(findLCM(12, -18), equals(36));
      expect(findLCM(-12, -18), equals(36));
    });

    test('LCM of equal numbers', () {
      expect(findLCM(5, 5), equals(5));
      expect(findLCM(-7, -7), equals(7));
    });

    test('LCM of prime numbers', () {
      expect(findLCM(7, 13), equals(91));
      expect(findLCM(17, 19), equals(323));
    });
  });
}
