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
  int sum = a+b;
  int subtraction =a -b;
  int multiply = a* b;
  double devide =a/b;
  // if(b!=0){
  //   devide = a/b;
  // }

  switch(operator){
    case '+':
     return "Sum of $a and $b is : $sum";

    case '-':
      return 'Miness of $a and $b is : $subtraction';

    case '*' :
      return 'Multiply of $a and $b is : $multiply';

    case'/' :
      if(b==0){
        return "Can not devide by zero";
      }
      return 'Devide of $a and $b is : $devide';

      default:
        return "Invalide operator ";
  }


}