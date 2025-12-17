/*
Name : Ahmad Amiri
Date : 2025-11-31

Question-18:  Pattern Printing – Right-aligned Triangle
Example:
Input:
4
Output:
    *
   **
  ***
 ****
*/


void main() {
  var result = rightAlignPatternPrinting(4);
  for (var line in result) {
    print(line);
  }
}

List<String> rightAlignPatternPrinting(int number) {
  List<String> pattern = [];

  for (int i = 1; i <= number; i++) {
    String space = " " * (number - i);
    String stars = "*" * i;
    pattern.add(space + stars);
  }

  return pattern;
}