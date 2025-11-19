/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-7: Check whether a number is even or odd
 Description: Determine if a number is divisible by 2.
 Example:
    Input:
    7
    Output:
    Odd
*/

enum NumType { odd, even }

checkOddEven(int num) {
  if (num % 2 == 0) {
    return 'Even';
  } else {
    return 'Odd';
  }
}
