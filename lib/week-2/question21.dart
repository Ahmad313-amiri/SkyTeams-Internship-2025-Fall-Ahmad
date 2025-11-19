/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-21:
. Sum of digits
Description: Calculate the sum of all digits of a number.
Example:
Input:
123
Output:
6
*/

int calculateSumofDigits(int number) {
  int sum = 0;
  number = number.abs();
  if (number == 0) {
    sum = 0;
  }
  while (number != 0) {
    int digit = number % 10;
    sum += digit;
    number = number ~/ 10;
  }
  return sum;
}
