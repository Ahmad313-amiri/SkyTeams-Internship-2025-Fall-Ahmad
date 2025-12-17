/*

Name : Ahmad Amiri
Date : 2025-12-10

Question-15: Kadane’s Algorithm (Max Subarray Sum)
Example:
[-2,1,-3,4,-1,2,1,-5,4] → 6

*/



void main(){
  print(kadaneAlgorithm([-2,1,-3,4,-1,2,1,-5,4]));
}


int kadaneAlgorithm(List<int> list) {
  if (list.isEmpty) return 0;

  int currentSum = list[0];
  int maxSum = list[0];

  for (int i = 1; i < list.length; i++) {
    currentSum = (list[i] > currentSum + list[i]) ? list[i] : currentSum + list[i];
    if (currentSum > maxSum) {
      maxSum = currentSum;
    }
  }

  return maxSum;
}

