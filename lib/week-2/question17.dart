/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-17:
S. Print numbers from 1 to 100
Description: Use a loop to print num\bers sequentially.
Example:
Output:
1, 2, 3, …, 100
*/

int sumOfNaturalNumbers(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}
