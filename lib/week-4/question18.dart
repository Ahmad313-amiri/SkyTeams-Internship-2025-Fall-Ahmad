/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-18:  Implement a Stack (Array-Based)
Operations: push, pop, peek, isEmpty.


*/

class Stack {
  final List<int> _items = [];

  void push(int value) {
    _items.add(value);
  }

  int? pop() {
    if (isEmpty()) {
      return null;
    }
    return _items.removeLast();
  }

  int? peek() {
    if (isEmpty()) {
      return null;
    }
    return _items.last;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }
}
