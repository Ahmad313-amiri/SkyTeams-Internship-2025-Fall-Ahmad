/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-30:  Find Missing Number in Array (1 to N)
Description: Given numbers from 1 to N with one missing, find the missing number.
Example:
Input:
[1, 2, 4, 5]
Output:
3

*/



void main() {
  List<int> arr = [1, 2, 4, 5];
  print(findMissingNumber(arr));
}

int findMissingNumber(List<int> list) {
  int n = list.length + 1;
  int totalSum = n * (n + 1) ~/ 2;

  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }

  return totalSum - sum;
}
