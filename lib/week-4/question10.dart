/*

Name : Ahmad Amiri
Date : 2025-12-7

Question-10: Check Unique Characters
Description: Return whether a string contains only unique chars.
Example:
"hello" → Not Unique
*/

void main() {
  checkUniqueChar('ahmd');
}

void checkUniqueChar(String input) {
  for (int i = 1; i < input.length; i++) {
    for (int j = 0; j < i; j++) {
      if (input[i] == input[j]) {
        print('Not Uniques');
        return;
      }
    }
  }
  print('unique');
}
