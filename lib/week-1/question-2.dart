/*
Name : Ahmad Amiri
Date : 2025-11-14

Question-2 : Test a function that reverses a string/list.

Description :
This test verifies the correctness of the addNums function by checking multiple
expected scenarios, including positive numbers, negative numbers, zero values,
and mixed inputs, to ensure the function behaves properly in all cases.
*/




String reverseString(String str){
  List<String> char = str.split('');
  String temp;
  int left =0;
  int right  = str.length-1;


  while(left<right){

    temp = char[left];
    char[left] = char[right];
    char[right] = temp;



    right--;
    left ++;
  }

return char.join('');
}


List reverseList(List<int> list){
  int temp;
  int left=0;
  int right = list.length-1;


  while( left < right ){

    temp = list[left];
    list[left] = list[right];
    list[right] = temp;
    left ++;
    right --;


  }
  return list;
}