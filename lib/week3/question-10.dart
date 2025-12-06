/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-10 :Check whether a number is prime
Description: Determine if a number is divisible only by 1 and itself.
Example:
Input:
17
Output:
Prime
Input:
20
Output:
Not Prime
*/
void main() {
  print(definePrimeNum(17));
}

definePrimeNum(int number) {
  if (number <= 1) {
    return 'Not Found';
  }

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return 'Not Prime';
    }
  }

  return 'Prime';
}
