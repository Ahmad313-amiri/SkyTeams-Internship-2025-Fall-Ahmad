/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-26:  Convert Decimal to Binary
Description: Convert a decimal number to its binary representation.
Example:
Input:
10
Output:
1010


*/

void main() {
  var result = convertToBinary(10);
  print(result);
}

String convertToBinary(int number) {
  if (number == 0) return '0';

  int original = number;
  List<int> binary = [];

  while (original > 0) {
    int remainder = original % 2;
    binary.add(remainder);
    original ~/= 2;
  }
  reverseList(binary);
  return binary.join('');
}

reverseList(List list) {
  if (list.isEmpty) return;
  if (list == []) return;

  int start = 0;
  int end = list.length - 1;

  while (start < end) {
    int temp = list[start];
    list[start] = list[end];
    list[end] = temp;

    start++;
    end--;
  }
}
