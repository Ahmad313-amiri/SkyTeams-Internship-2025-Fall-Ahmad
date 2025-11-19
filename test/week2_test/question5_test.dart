import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question5.dart';

void main() {
  group('Interest Calculation Tests', () {

    test('Simple Interest Positive Values', () {
      double result = calculateInterest(
        principal: 1000,
        rate: 5,
        time: 2,
        type: InterestType.simple,
      );
      expect(result, 100);
    });

    test('Compound Interest Positive Values', () {
      double result = calculateInterest(
        principal: 1000,
        rate: 5,
        time: 2,
        type: InterestType.compound,
      );
      expect(result, closeTo(102.5, 0.01));
    });

    test('Zero Principal', () {
      double result = calculateInterest(
        principal: 0,
        rate: 10,
        time: 5,
        type: InterestType.simple,
      );
      expect(result, 0);
    });

    test('Zero Rate', () {
      double result = calculateInterest(
        principal: 1000,
        rate: 0,
        time: 5,
        type: InterestType.compound,
      );
      expect(result, 0);
    });

    test('Zero Time', () {
      double result = calculateInterest(
        principal: 1000,
        rate: 5,
        time: 0,
        type: InterestType.simple,
      );
      expect(result, 0);
    });

    test('Compound Interest Large Values', () {
      double result = calculateInterest(
        principal: 1e9,
        rate: 10,
        time: 10,
        type: InterestType.compound,
      );
      expect(result, greaterThan(0));
    });

  });
}
