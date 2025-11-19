/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-20:
Count digits in a number
Description: Find how many digits are in a number.
Example:
Input:
786
Output:
3
*/

int countDigits(int number) {
  int count = 0;
  if (number == 0) {
    return 1;
  }

  while (number != 0) {
    number = number ~/ 10;
    count++;
  }
  return count;
}
