/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-18:
Multiplication table of a number
Description: Print the multiplication table for a given number (up to 10 or N).
Example:
Input:
5
Output:
5 × 1 = 5
5 × 2 = 10
…
5 × 10 = 50
*/

void main() {
  print(createMultiplicationTable(5)); //
}

String createMultiplicationTable(int n) {
  List<String> table = [];
  for (int i = 1; i <= 10; i++) {
    table.add('$i x $n = ${n * i}');
  }
  return table.join('\n');
}
