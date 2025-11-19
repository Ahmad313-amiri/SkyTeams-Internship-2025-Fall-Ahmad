/*
Name : Ahmad Amiri
Date : 2025-11-18

Question-11:
Simple Calculator using switch-case
Description: Input two numbers and an operator (+, -, *, /) and compute the result.
Example:
Input:
5, 3, +
Output:
8
*/


String calculateNumbers(int a, int b, String operator){
  int sum = a + b;
  int subtraction = a - b;
  int multiply = a * b;
  double divide = a / b;

  switch(operator){
    case '+':
      return "Sum of $a and $b is : $sum";
    case '-':
      return "Subtraction of $a and $b is : $subtraction";
    case '*':
      return "Multiplication of $a and $b is : $multiply";
    case '/':
      if(b == 0) return 'Can not devide by zero';
      return "Division of $a and $b is : $divide";
    default:
      return 'No correct operator enter corect operator';
  }
}