/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-19: 19. Implement a Queue Using Two Stacks

*/


class QueueUsingStacks {
  final List<int> _inStack = [];
  final List<int> _outStack = [];

  void enqueue(int value) {
    _inStack.add(value);
  }

  int? dequeue() {
    _moveIfNeeded();
    if (_outStack.isEmpty) return null;
    return _outStack.removeLast();
  }

  int? peek() {
    _moveIfNeeded();
    if (_outStack.isEmpty) return null;
    return _outStack.last;
  }

  bool isEmpty() {
    return _inStack.isEmpty && _outStack.isEmpty;
  }

  void _moveIfNeeded() {
    if (_outStack.isEmpty) {
      while (_inStack.isNotEmpty) {
        _outStack.add(_inStack.removeLast());
      }
    }
  }
}
