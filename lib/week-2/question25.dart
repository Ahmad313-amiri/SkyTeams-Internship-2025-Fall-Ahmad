/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-25:
Count digits in a number
Description: Find how many digits are in a number.
Example:
Input:
786
Output:
3
*/

int findGCD(int x, int y) {
  x = x.abs();
  y = y.abs();
  while (y != 0) {
    int temp = y;
    y = x % y;
    x = temp;
  }
  return x;
}

int findLCM(int a, int b) {
  if (a == 0 || b == 0) return 0;
  return (a.abs() * b.abs()) ~/ findGCD(a, b);
}
