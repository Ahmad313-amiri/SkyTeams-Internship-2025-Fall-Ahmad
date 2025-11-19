/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-10:
Leap Year Checker
Description: Determine if a given year is a leap year.
Rule: Year divisible by 4 → leap year, except centuries not divisible by 400.
Example:
Input:
2000
Output:
Leap year
Input:
1900
Output:
Not leap year
*/

String  determineLeapYear(int year) {
  if (year % 400 == 0) {
    return '$year is leapYear';
  } else if (year % 100 == 0) {
    return'$year is not leapYear';
  } else if (year % 4 == 0) {
    return '$year is leapYear';
  } else {
    return'$year is not a leapYear';
  }
}


