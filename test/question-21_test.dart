import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-21.dart';


void main() {

  test('password less than 8 characters', () {
    expect(passwordStrengthChecker('Ab1'), 'Weak');
  });

  test('password only lowercase', () {
    expect(passwordStrengthChecker('abcdefgh'), 'Weak');
  });

  test('password only uppercase', () {
    expect(passwordStrengthChecker('ABCDEFGH'), 'Weak');
  });

  test('password only digits', () {
    expect(passwordStrengthChecker('12345678'), 'Weak');
  });

  test('password lowercase and digits', () {
    expect(passwordStrengthChecker('abcd1234'), 'Weak');
  });

  test('password uppercase and digits', () {
    expect(passwordStrengthChecker('ABCD1234'), 'Weak');
  });

  test('password lowercase and uppercase', () {
    expect(passwordStrengthChecker('AbcDefGh'), 'Weak');
  });

  test('password meets all criteria', () {
    expect(passwordStrengthChecker('Abc12345'), 'Strong');
  });

  test('password longer and meets all criteria', () {
    expect(passwordStrengthChecker('MyPass123'), 'Strong');
  });

  test('password only letters and digits but missing uppercase', () {
    expect(passwordStrengthChecker('mypassword1'), 'Weak');
  });

  test('password only letters and digits but missing lowercase', () {
    expect(passwordStrengthChecker('MYPASSWORD1'), 'Weak');
  });

}
