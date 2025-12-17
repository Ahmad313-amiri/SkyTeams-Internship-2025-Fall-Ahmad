/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-23:Top K Frequent Elements
Input: [1,1,1,2,2,3], k=2 → [1,2]

*/

import 'dart:collection';

void main() {
  print(topKFrequent([1,1,1,2,2,3], 2)); // [1,2]
  print(topKFrequent([4,4,4,1,1,2,2,2,3], 3)); // [4,2,1]
}

List<int> topKFrequent(List<int> nums, int k) {
  Map<int,int> freq = {};

  for (var num in nums) {
    freq[num] = (freq[num] ?? 0) + 1;
  }

  List<int> sorted = freq.keys.toList()
    ..sort((a,b) => freq[b]!.compareTo(freq[a]!));

  return sorted.take(k).toList();
}
