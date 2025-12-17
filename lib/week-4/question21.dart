/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-21: Check Balanced Parentheses
Input: "{[()]}" → Output: Balanced

*/

void main() {
  print(isBalanced("{[()]}")); // Balanced
  print(isBalanced("{[(])}")); // Not Balanced
  print(isBalanced("{{[[(())]]}}")); // Balanced
}

bool isBalanced(String s) {
  List<String> stack = [];
  Map<String, String> pairs = {')':'(', ']':'[', '}':'{'};

  for (var char in s.split('')) {
    if (pairs.values.contains(char)) {
      stack.add(char);
    } else if (pairs.keys.contains(char)) {
      if (stack.isEmpty || stack.removeLast() != pairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
}
