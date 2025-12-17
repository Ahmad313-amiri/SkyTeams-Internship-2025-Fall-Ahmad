/*

Name : Ahmad Amiri
Date : 2025-12-6

Question-5:  Rearrange Array (Even Before Odd)
Description: Move even numbers before odd numbers while maintaining order.
Example:
Input: [1, 2, 3, 4, 5, 6]
Output: [2, 4, 6, 1, 3, 5]
*/

void main() {
  var result = rerangeList([1, 2, 7, 3, 4, 5]);
  print(result);
}

List<int> rerangeList(List<int> list) {
  List<int> reranged = [];

  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      reranged.add(list[i]);
    }
  }

  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 != 0) {
      reranged.add(list[i]);
    }
  }
  return reranged;
}
