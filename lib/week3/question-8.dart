/*
Name : Ahmad Amiri
Date : 2025-11-24

Question-8 : Write a function to check if an array contains a specific element
Description: Determine if a given element exists in the array.
Example:
Input:
Array = [3, 6, 9, 12], Element = 6
Output:
Found
*/


void main(){

  print(checkElements([65,45,6,8,7], 4));

}

 String checkElements(List<int> nums,int element){
String find='';
String notFind ='';
  for(int i=0; i<nums.length; i++){

    if(nums[i] ==element){
    return 'Found';

    }
  }

  return 'Not found';

}
