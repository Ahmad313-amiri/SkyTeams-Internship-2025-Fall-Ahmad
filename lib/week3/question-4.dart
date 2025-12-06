/*
Name : Ahmad Amiri
Date : 2025-11-22

Question-4 :  . Display all factors of a number
Description: Print all numbers that divide the given number exactly.
Example:
Input:
12
Output:
1, 2, 3, 4, 6, 12
*/


List<int> findFactors(int number) {
  List<int> factors = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
    }
  }

  return factors;
}
  
  
  
  
}
