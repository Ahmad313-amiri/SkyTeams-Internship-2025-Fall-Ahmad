/*

Name : Ahmad Amiri
Date : 2025-12-7

Question-8: Menu-Based ATM System
Description: Handle options for balance, withdraw, deposit, exit.
Example: "100 withdrawn successfully"
*/


class ATM {
  double _balance;

  ATM(this._balance);

  double get balance => _balance;

  String _format(double value) {
    return value % 1 == 0 ? value.toInt().toString() : value.toString();
  }

  String withdraw(double amount) {
    if (amount <= 0) {
      return 'Invalid amount';
    }

    if (amount > _balance) {
      return 'Insufficient balance';
    }

    _balance -= amount;
    return '${_format(amount)} withdrawn successfully';
  }

  String deposit(double amount) {
    if (amount <= 0) {
      return 'Invalid amount';
    }

    _balance += amount;
    return '${_format(amount)} deposited successfully';
  }

  String checkBalance() {
    return 'Your balance is: ${_format(_balance)}';
  }
}
