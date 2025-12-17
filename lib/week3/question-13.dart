/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-13:  Power of a number (without built-in function)
Description: Compute a^b using repeated multiplication.
Example:
Input:
2, 5
Output:
32

*/

void main(){

  var result = powerOfNumber(2, 3);
  print(result);
}

powerOfNumber(int base , int exponent){
 int  result = 1;
  if(base ==0){
    result =0;
    return result;
  }
  if(exponent<0){
    return 'Enter positive number';

  }
  for(int i=0; i<exponent; i++){

     result =result * base;

  }
  return result;
}


