/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-9:

Grade Calculator (0–100 → A–F)
Description: Input a student’s marks (0–100) and print the grade based on a scale.
Example:
Input:
85
Output:
B
*/

String defineGrade(int grade) {
  if (grade < 0 || grade > 100) return 'Invalid grade'; // مهم!

  int result = grade ~/ 10; // تقسیم صحیح

  switch (result) {
    case 10:
    case 9:
      return 'A';
    case 8:
    case 7:
      return 'B';
    case 6:
    case 5:
      return 'C';
    case 4:
    case 3:
      return 'D';
    case 2:
    case 1:
      return 'E';
    case 0:
      return 'F';
    default:
      return 'Invalid grade';
  }
}
