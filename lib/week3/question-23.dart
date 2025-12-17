/*
Name : Ahmad Amiri
Date : 2025-12-3

Question-23:  Calculate Factorial Using Recursion
Description: Implement factorial(n), which calculates the factorial of n using recursion.
Example:
Input:
5
Output:
120

*/


void main(){
  var result = calculateFactorail(5);
  print(result);

}

int calculateFactorail(int number) {
  if (number == 0 || number == 1) {
    return 1;
  }

  return number * calculateFactorail(number - 1);
}
