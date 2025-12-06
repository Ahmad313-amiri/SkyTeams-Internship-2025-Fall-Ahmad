/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-15:  FCheck for Armstrong number
Description: A number is Armstrong if the sum of its digits raised to the power of the number of
digits equals the number itself.
Example:
Input:
153
Output:
Armstrong
Input:
123
Output:
Not Armstrong

*/


void main() {
  int number = 123;

  if (isArmstrong(number)) {
    print("Armstrong");
  } else {
    print("Not Armstrong");
  }
}

bool isArmstrong(int number) {
  int original = number;
   int count =0;

  // int digits = number.toString().length;
int temp = number;
  while(temp>0){
    count ++;
    temp ~/= 10;


  }
  int sum = 0;
  while (number > 0) {
    int digit = number % 10;
    sum += powCustom(digit,count);
    number ~/= 10;
  }

  return sum == original;
}

int powCustom(int base, int exponent) {
  int result = 1;

  for (int i = 0; i < exponent; i++) {
    result *= base;
  }

  return result;
}



