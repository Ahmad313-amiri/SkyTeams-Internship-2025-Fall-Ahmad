/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-24:Find GCD of two numbers
Description: Compute the greatest common divisor using repeated subtraction or the Euclidean
algorithm.
Example:
Input:
12, 18
*/

int findGCD(int x, int y) {
  while (y != 0) {
    int temp = y;
    y = x % y;
    x = temp;
  }
  return x;
}
