/*
Name : Ahmad Amiri
Date : 2025-11-22

Question-6 :  Write a function to find the smallest element in an array
Description: Find and return the smallest number in an array.
Example:
Input:
[4, 7, 1, 9, 2]
Output:
1
*/

void main(){

  var result = findSmallestElement([]);
  print(result);



}


 int findSmallestElement(List<int> nums){


  if(nums.isEmpty){
    throw Exception("List is empthy");
  }


  int smallest = nums[0];

  for(int i=0; i<nums.length; i++){
    if(smallest > nums[i]){
      smallest = nums[i];
    }

  }

  return smallest;


}
