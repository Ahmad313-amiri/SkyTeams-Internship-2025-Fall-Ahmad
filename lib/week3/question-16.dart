/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-16:  Fibonacci sequence
Description: Print the Fibonacci sequence up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8

*/
void main() {
  print(calculateFibonacci(5));
}

List<int> calculateFibonacci(int n) {
  if (n <= 0) return [];
  if (n == 1) return [0];
  if (n == 2) return [0, 1];

  List<int> fibSeq = [0, 1];
  for (int i = 2; i < n; i++) {
    fibSeq.add(fibSeq[i - 1] + fibSeq[i - 2]);
  }
  return fibSeq;
}
