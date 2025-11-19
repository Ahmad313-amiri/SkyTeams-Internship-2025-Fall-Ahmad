/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-22:. Print even numbers in a range
Description: Input start and end values, print all even numbers between them.
Example:
Input:
1, 10
Output:
2, 4, 6, 8, 10
*/

String printEvenNumbers(int start, int end) {
  List<int> list = [];

  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      list.add(i);
    }
  }
  return list.join(', ');
}
