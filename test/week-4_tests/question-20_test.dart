import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question20.dart';


void main() {
  group('Balanced Parentheses Tests', () {
    test('Returns true for balanced parentheses', () {
      expect(isBalanced('{[()]}'), true);
    });

    test('Returns false for wrong order', () {
      expect(isBalanced('{[(])}'), false);
    });

    test('Returns false for missing closing bracket', () {
      expect(isBalanced('{[()'), false);
    });

    test('Returns false for extra closing bracket', () {
      expect(isBalanced('{[()]}]'), false);
    });

    test('Returns true for empty string', () {
      expect(isBalanced(''), true);
    });

    test('Returns false when closing bracket appears first', () {
      expect(isBalanced('}[]'), false);
    });
  });
}
