/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-19:
Reverse a number
Description: Reverse the digits of an integer.
Example:
Input:
1234
Output:
4321
*/

int reverseNumber(int number) {
  int reversed = 0;

  while (number != 0) {
    int remainder = number % 10;
    reversed = reversed * 10 + remainder;
    number = number ~/ 10;
  }

  return reversed;
}
