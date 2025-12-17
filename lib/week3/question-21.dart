/*
Name : Ahmad Amiri
Date : 2025-12-3

Question-21:   Password Strength Checker
Description: A strong password must:
• Be at least 8 characters long.
• Contain at least one uppercase letter, one lowercase letter, and one number.
Example:
Input:
MyPass123
Output:
Strong
Input:
pass
Output:
Weak

*/
void main() {
  print(passwordStrengthChecker('hmadd2345678'));
}

String passwordStrengthChecker(String password) {
  if (password.length < 8) {
    return 'Weak';
  }

  bool lower = false;
  bool upper = false;
  bool digit = false;
  for (int i = 0; i < password.length; i++) {
    String ch = password[i];

    if (isLowerCase(ch)) lower = true;
    if (isUpperCase(ch)) upper = true;
    if (isDigit(ch)) digit = true;

    if (lower && upper && digit) return 'Strong';
  }

  return 'Weak';
}

bool isLowerCase(String ch) {
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  for (int i = 0; i < lower.length; i++) {
    if (ch == lower[i]) return true;
  }
  return false;
}

bool isUpperCase(String ch) {
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  for (int i = 0; i < upper.length; i++) {
    if (ch == upper[i]) return true;
  }
  return false;
}

bool isDigit(String ch) {
  String digits = '0123456789';
  for (int i = 0; i < digits.length; i++) {
    if (ch == digits[i]) return true;
  }
  return false;
}
