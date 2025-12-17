/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-20:  Check Balanced Parentheses
Input: "{[()]}" → Output: Balanced

*/

bool isBalanced(String input) {
  List<String> stack = [];

  Map<String, String> pairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (char == '(' || char == '{' || char == '[') {
      stack.add(char);
    }
    else if (pairs.containsKey(char)) {
      if (stack.isEmpty) return false;

      String top = stack.removeLast();
      if (top != pairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
