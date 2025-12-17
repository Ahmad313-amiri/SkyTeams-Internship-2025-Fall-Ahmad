/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-27:  Find Unique Elements in an Array
Description: Return an array with only unique elements from the input array.
Example:
Input:
[1, 2, 2, 3, 4, 4, 5]
Output:
[1, 2, 3, 4, 5]

*/

void main() {
  var result = findUniqueElement([1, 2, 2, 3, 4, 4, 5]);
  print(result);
}

List<int> findUniqueElement(List<int> list) {
  List<int> uniqueList= [];
  Map<int, bool>  seen = {};

  for (int i = 0; i < list.length; i++) {
    int num =list[i];
    if(seen[num] !=true){
      uniqueList.add(num);
      seen[num] = true;
    }
  }
  return uniqueList;
}
