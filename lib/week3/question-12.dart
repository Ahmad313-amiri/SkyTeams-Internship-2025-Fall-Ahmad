/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-12:  Check for palindrome number
Description: Check if a number reads the same backward and forward.
Example:
Input:
121
Output:
Palindrome
Input:
123
Output:
Not Palindrome

*/

void main(){

  print(checkPalindrome(121));
}



 String checkPalindrome(int number) {
  int original = number;
  int reversed = 0;

  while(number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number = number ~/ 10;
  }

  if (original == reversed) {
    return 'Plindrome';
  } else {
    return 'Not Plindrome';
  }
}
