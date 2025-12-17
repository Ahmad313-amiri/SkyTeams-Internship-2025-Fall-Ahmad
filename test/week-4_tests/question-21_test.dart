import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question21.dart';

void main() {
  group('Balanced Parentheses Tests', () {
    test('Valid nested parentheses', () {
      expect(isBalanced("{[()]}"), true);
      expect(isBalanced("{{[[(())]]}}"), true);
      expect(isBalanced("()[]{}"), true);
      expect(isBalanced("[({})]"), true);
    });

    test('Invalid parentheses', () {
      expect(isBalanced("{[(])}"), false);
      expect(isBalanced("((())"), false);
      expect(isBalanced("({[})]"), false);
      expect(isBalanced("({[}])"), false);
    });

    test('Empty string', () {
      expect(isBalanced(""), true);
    });

    test('Single type of parentheses', () {
      expect(isBalanced("(((((())))))"), true);
      expect(isBalanced("((((())"), false);
      expect(isBalanced("{{{{}}}}"), true);
      expect(isBalanced("{{{{}}"), false);
    });

    test('No parentheses', () {
      expect(isBalanced("abcdef"), true);
    });
  });
}
