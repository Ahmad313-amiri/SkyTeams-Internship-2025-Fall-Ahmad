/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-9 :Write a function to count occurrences of an element in an array
Description: Count how many times a given number appears in the array.
Example:
Input:
Array = [2, 3, 2, 5, 2], Element = 2
Output:
3
*/

void main(){
  print(findOccurrences([2,5,5,5,6,5], 0));


}

  int findOccurrences(List<int> nums, int element){

  int count=0;
  if(nums.isEmpty){
    throw Exception('Your list is empty');
  }

  for(int i=0; i<nums.length; i++){

    if(nums[i] ==element) count++;
  }

 return count;



}