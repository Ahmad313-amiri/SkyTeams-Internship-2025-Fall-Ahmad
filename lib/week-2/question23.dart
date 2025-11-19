/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-23:Fibonacci series up to N terms
Description: Generate the Fibonacci sequence (0, 1, 1, 2, 3, 5, 8…) up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8
*/

String generateFibonachiNums(int n) {
  List<int> list = [];

  int a = 0;
  int b = 1;

  if (n <= 0) return list.join('');

  for (int i = 0; i <= n; i++) {
    list.add(a);
    int next = a + b;
    a = b;
    b = next;
  }

  return list.join(', ');
}
