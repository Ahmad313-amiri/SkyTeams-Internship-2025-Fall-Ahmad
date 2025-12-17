/*

Name : Ahmad Amiri
Date : 2025-12-13

Question-16: Kadane’s Algorithm (Max Subarray Sum)
Example:
[-2,1,-3,4,-1,2,1,-5,4] → 6

*/

void main(){
  List<int> list = [-2,1,-3,4,-1,2,1,-5,4];
  print( kadaneAlgorithm(list));
}

int kadaneAlgorithm(List<int> list) {
  int currentSum = list[0];
  int maxSum = list[0];

  for (int i = 1; i < list.length; i++) {
    currentSum =
    currentSum + list[i] > list[i]
        ? currentSum + list[i]
        : list[i];

    if (currentSum > maxSum) {
      maxSum = currentSum;
    }
  }

  return maxSum;
}
