
/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-5: Compute Simple and Compound Interest
Description: Given Principal (P), Rate (R), and Time (T), compute:
Simple Interest = (P × R × T) / 100
Compound Interest = P × ((1 + R/100) ^ T - 1)
*/


enum InterestType { simple, compound }

double calculateInterest({
  required double principal,
  required double rate,
  required int time,
  required InterestType type,
}) {
  switch (type) {
    case InterestType.simple:
      return (principal * rate * time) / 100;

    case InterestType.compound:
      final factor = 1 + rate / 100;
      return principal * (powDouble(factor,time) - 1);
  }
}

double powDouble(double base, int exponent) {
  double result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= base;
  }
  return result;
}

// we use this function to  calcualte interest with double time value
// double powDouble(double base, double exponent) {
//   return base == 0 ? 0 : base.pow(exponent);
// }


