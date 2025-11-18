/*
Name : Ahmad Amiri
Date : 2025-11-18

Question-13:
Month name & number of days using switch-case
Description: Input a month number (1–12) and display its name and number of days.
Example:
Input:
2
Output:
February, 28 or 29 days
*/
void main() {
  describeMonth(-12);
}

describeMonth(int monthNumber) {
  if (monthNumber >= 1 && monthNumber <= 12) {
    switch (monthNumber) {
      case 1:
        print('Jinuary , 28 or 29 days');
      case 2:
        print('Febrwary, 28 or 29 days');
      case 3:
        print('March, 28 or 29 days');
      case 4:
        print('April, 28 or 29 days');
      case 5:
        print('May, 28 or 29 days');
      case 6:
        print('Jon, 28 or 29 days');
      case 7:
        print('July, 28 or 29 days');
      case 8:
        print('Aquest, 28 or 29 days');
      case 9:
        print('Septamber, 28 or 29 days');
      case 10:
        print('Octomber, 28 or 29 days');
      case 11:
        print('Nowember, 28 or 29 days');
      case 12:
        print('December, 28 or 29 days');
    }
  } else {
    print('Please Enter valide month number 1-12 !');
  }
}
