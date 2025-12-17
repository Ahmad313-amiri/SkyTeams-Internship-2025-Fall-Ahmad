import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question19.dart';


void main() {
  group('Queue Using Two Stacks Tests', () {
    late QueueUsingStacks queue;

    setUp(() {
      queue = QueueUsingStacks();
    });

    test('Queue should be empty initially', () {
      expect(queue.isEmpty(), true);
    });

    test('Enqueue adds elements to queue', () {
      queue.enqueue(10);
      queue.enqueue(20);

      expect(queue.isEmpty(), false);
      expect(queue.peek(), 10);
    });

    test('Dequeue returns elements in FIFO order', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);

      expect(queue.dequeue(), 1);
      expect(queue.dequeue(), 2);
      expect(queue.dequeue(), 3);
    });

    test('Peek returns front element without removing it', () {
      queue.enqueue(5);
      queue.enqueue(15);

      expect(queue.peek(), 5);
      expect(queue.peek(), 5);
    });

    test('Dequeue on empty queue returns null', () {
      expect(queue.dequeue(), null);
    });

    test('Peek on empty queue returns null', () {
      expect(queue.peek(), null);
    });

    test('Queue becomes empty after all dequeues', () {
      queue.enqueue(100);
      queue.enqueue(200);

      queue.dequeue();
      queue.dequeue();

      expect(queue.isEmpty(), true);
    });
  });
}
