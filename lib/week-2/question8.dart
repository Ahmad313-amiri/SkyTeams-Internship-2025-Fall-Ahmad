/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-8: . Determine if a number is positive, negative, or zero
Description: Use if-else statements to categorize a number.
*/

checkNums(int num) {
  if (num < 0) {
    return 'The number is Negative';
  }
  if (num > 0) {
    return 'The number is positive';
  }
  if (num == 0) {
    return 'The number is Zero';
  }
}
