/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-4: Temperature converter (Celsius ↔ Fahrenheit)
Description: Convert temperature from Celsius to Fahrenheit and vice versa.
*/

enum  TempType {CtoF,FtoC}


double convertTemp(double value, TempType type) {
  switch (type) {
    case TempType.CtoF:
      return (value * 9 / 5) + 32;
    case TempType.FtoC:
      return (value - 32) * 5 / 9;
  }
}
