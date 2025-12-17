import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question18.dart';


void main() {
  group('Stack Tests', () {
    late Stack stack;

    setUp(() {
      stack = Stack();
    });

    test('Stack should be empty initially', () {
      expect(stack.isEmpty(), true);
    });

    test('Push adds elements to the stack', () {
      stack.push(10);
      stack.push(20);

      expect(stack.isEmpty(), false);
      expect(stack.peek(), 20);
    });

    test('Pop removes and returns the top element', () {
      stack.push(10);
      stack.push(20);
      stack.push(30);

      final poppedValue = stack.pop();

      expect(poppedValue, 30);
      expect(stack.peek(), 20);
    });

    test('Peek returns top element without removing it', () {
      stack.push(5);
      stack.push(15);

      final top = stack.peek();

      expect(top, 15);
      expect(stack.peek(), 15);
    });

    test('Pop on empty stack returns null', () {
      final result = stack.pop();

      expect(result, null);
    });

    test('Peek on empty stack returns null', () {
      final result = stack.peek();

      expect(result, null);
    });
  });
}
