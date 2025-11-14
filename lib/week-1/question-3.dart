/*
Name : Ahmad Amiri
Date : 2025-11-14

Question-3 : Test a function that finds the largest number in a collection.

Description :
This test verifies the correctness of the addNums function by checking multiple
expected scenarios, including positive numbers, negative numbers, zero values,
and mixed inputs, to ensure the function behaves properly in all cases.
*/

int findLargestNum(List<int> nums){

  int largest = nums[0];

  for(int i=0; i<nums.length; i++){
    if(largest<nums[i]){
      largest = nums[i];

    }
  }
  return largest;

}