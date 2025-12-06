/*
Name : Ahmad Amiri
Date : 2025-11-22

Question-3 :  Sum of digits of a number
Description: Calculate the sum of all digits in a given number.
Example:
Input:
12345
Output:
15
*/



void main(){

  var result =sumOfDigits(0);
  print(result);
}

sumOfDigits(int number) {
  int sum = 0;
  if(number ==0) return 0;
  while (number != 0) {
    int remainder = number % 10;
    sum += remainder;

    number ~/= 10;
  }

  return sum;
}
