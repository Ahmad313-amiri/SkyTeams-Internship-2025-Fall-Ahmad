/*
Name : Ahmad Amiri
Date : 2025-12-6

Question-2: Rotate Array K Times to the Right
Description: Rotate elements of an array K times to the right.
Example:
Input:[1, 2, 3, 4, 5] , K = 2
Output: [4, 5, 1, 2, 3]

*/
main() {
  List<int> nums = [1, 2, 3, 4, 5];

  finalRotated(nums, 2);

  print(nums);
}

void finalRotated(List<int> nums, int k) {
  k = k % nums.length;
  int n = nums.length;
  rotataElements(nums, 0, n - 1);
  rotataElements(nums, 0, k - 1);
  rotataElements(nums, k, n - 1);
}

void rotataElements(List<int> list, int start, int end) {
  while (start < end) {
    int temp = list[start];
    list[start] = list[end];
    list[end] = temp;

    start++;
    end--;
  }
}
