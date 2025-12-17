/*

Name : Ahmad Amiri
Date : 2025-12-6

Question-4: Intersection of Two Arrays
Description: Return elements present in both arrays.
Example:
Input: [1, 2, 3, 4], [3, 4, 5, 6]
Output: [3, 4]

*/

void main() {
  print(intersectionOfLists([1, 2, 3, 4], [3, 4, 5, 6]));
}

List<int> intersectionOfLists(List<int> list1, List<int> list2) {
  List<int> intersection = [];

  for (int i = 0; i < list1.length; i++) {
    bool foundInSecond = false;

    for (int x = 0; x < intersection.length; x++) {
      if (intersection[x] == list1[i]) {
        foundInSecond = true;
        break;
      }
    }

    if (foundInSecond) continue;


    for (int j = 0; j < list2.length; j++) {
      if (list1[i] == list2[j]) {
        intersection.add(list1[i]);
        break;
      }
    }
  }

  return intersection;
}


