/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-15:
Simple Calculator using switch-case
Description: Input two numbers and an operator (+, -, *, /) and compute the result.
Example:
Input:
5, 3, +
Output:
8
*/

String triangleType(int a, int b, int c) {

  if (a + b <= c || a + c <= b || b + c <= a) {
    return "Invalid triangle";
  }


  if (a == b && b == c) {
    return "Valid triangle, Equilateral";
  } else if (a == b || a == c || b == c) {
    return "Valid triangle, Isosceles";
  } else {
    return "Valid triangle, Scalene";
  }
}
