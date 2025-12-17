/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-19:   Pattern Printing – Pyramid
Example:
Input:
5
Output:
*
***
*****
*******
*********
*/

void main() {
  var result = pyramidPattern(5);
  for (var line in result) {
    print(line);
  }
}


List<String> pyramidPattern(int number) {
  List<String> pattern = [];

  for (int i = 1; i <= number; i++) {
    String space = " " * (number - i);
    int stars = 2 * i - 1;
    pattern.add(space + "*" * stars);
  }

  return pattern;
}