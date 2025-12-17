/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-17:  Pattern Printing – Right-angled Triangle
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
  var result = patternPrinting(4);
  for (var line in result) {
    print(line);
  }
}

List<String> patternPrinting(int number) {
  List<String> pattern = [];

  if (number <= 0) return pattern;

  for (int i = 1; i <= number; i++) {
    pattern.add("*" * i);
  }

  return pattern;
}

