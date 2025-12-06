/*
Name : Ahmad Amiri
Date : 2025-11-22

Question-5 :  Write a function to find the largest element in an array
Description: Given an array of numbers, return the largest value.
Example:
Input:
[2, 8, 5, 3, 9]
Output:
9
*/


void main(){


  var result= findLargestNum([220,3,40,500,6]);
  print(result);
}


int findLargestNum(List<int> list){
int largest =0;
for(int i =0; i<list.length; i++){
  if(largest < list[i]){
    largest = list[i];
  }


 }
return largest;
}
