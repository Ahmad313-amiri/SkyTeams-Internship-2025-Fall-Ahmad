import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question8.dart';


void main() {
  group('ATM System Tests', () {
    late ATM atm;

    setUp(() {
      atm = ATM(1000);
    });

    test('Initial balance is correct', () {
      expect(atm.balance, 1000);
    });

    test('Withdraw valid amount', () {
      final result = atm.withdraw(100);

      expect(result, '100 withdrawn successfully');
      expect(atm.balance, 900);
    });

    test('Withdraw more than balance', () {
      final result = atm.withdraw(2000);

      expect(result, 'Insufficient balance');
      expect(atm.balance, 1000);
    });

    test('Deposit valid amount', () {
      final result = atm.deposit(500);

      expect(result, '500 deposited successfully');
      expect(atm.balance, 1500);
    });

    test('Withdraw invalid amount', () {
      final result = atm.withdraw(-50);

      expect(result, 'Invalid amount');
      expect(atm.balance, 1000);
    });

    test('Deposit invalid amount', () {
      final result = atm.deposit(0);

      expect(result, 'Invalid amount');
      expect(atm.balance, 1000);
    });

    test('Check balance message', () {
      final result = atm.checkBalance();

      expect(result, 'Your balance is: 1000');
    });
  });
}
