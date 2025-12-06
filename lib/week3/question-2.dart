/*
Name : Ahmad Amiri
Date : 2025-11-22

Question-2 : . Reverse a number
Description: Reverse the digits of a number.
Example:
Input:
1234
Output:
4321
*/

void main(){

  var result = reverseNumber(1234);
  print(result);
}

 int reverseNumber(int number){

  int reversed = 0;

  while(number !=0){
     int remainder = number%10;
     reversed =reversed * 10+ remainder;
     number =number ~/10;


  }

  return reversed;



}