/*
Question-24:
Name : Ahmad Amiri
Date : 2025-12-12

Question-24:K-th Largest Element
Given an array of numbers and a value k, find the number that would appear in the k-th
position if the array were sorted in descending order.

*/


void main() {
  print(kthLargest([3, 2, 1, 5, 6, 4], 2)); // 5

}





int kthLargest(List<int> nums, int k) {
  int n = nums.length;
  for (int i = 0; i < n; i++) {
    int maxIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (nums[j] > nums[maxIndex]) {
        maxIndex = j;
      }
    }
    int temp = nums[i];
    nums[i] = nums[maxIndex];
    nums[maxIndex] = temp;
  }

  if (k < 1 || k > n) {
    throw ArgumentError('k is out of bounds');
  }

  return nums[k - 1];
}
