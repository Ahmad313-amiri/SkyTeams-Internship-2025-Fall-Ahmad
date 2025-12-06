/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-7 :  Write a function to find the sum of all elements in an array
Description: Calculate the total sum of all array elements.
Example:
Input:
[1, 2, 3, 4, 5]
Output:
15
*/


void main(){
  var result =findSumOfElements([1,3,4]);
  print(result);

}




 int findSumOfElements(List<int> nums){
  int sum =0;
  for(int i= 0; i<nums.length; i++){
    sum +=nums[i];

  }
  return sum;
}