/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-11: Generate all prime numbers up to N
Description: List all prime numbers up to a given limit using a loop.
Example:
Input:
10
Output:
2, 3, 5, 7
*/

void main() {
  print(listPrimeNumbers(12));
}


bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

List<int> listPrimeNumbers(int number) {
  List<int> primeNums = [];
  for (int i = 2; i <= number; i++) {
    if (isPrime(i)) {
      primeNums.add(i);
    }
  }
  return primeNums;
}

