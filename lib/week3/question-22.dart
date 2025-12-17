/*
Name : Ahmad Amiri
Date : 2025-12-3
Question-22:  Collatz Sequence (Hailstone Numbers)
Description:
Take a number n.
• If n is even, divide it by 2.
• If n is odd, multiply it by 3 and add 1.
• Repeat until n = 1.
• Count the number of steps to reach 1.
Example:
Input:
6
Output:
6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (Steps: 8)
*/

String collatzSequence(int number) {
  String steps = '$number';
  int count = 0;

  while (number != 1) {
    if (number % 2 == 0) {
      number ~/= 2;
    } else {
      number = number * 3 + 1;
    }
    count++;
    steps += ' -> $number';
  }

  return steps + ' (Steps : $count)';
}
