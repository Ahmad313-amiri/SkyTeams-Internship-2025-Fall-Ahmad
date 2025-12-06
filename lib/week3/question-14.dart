/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-14:  Find factorial of a number
Description: Compute N! using iterative approach.
Example:
Input:
5
Output:
120

*/

void main(){

  var result = computeFactorial(3);
   print(result);
}


computeFactorial(int number){
  if(number<=1) return 1;

  return (number * computeFactorial(number-1));
}