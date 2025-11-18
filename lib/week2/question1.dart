/*
Name : Ahmad Amiri
Date : 2025-11-17

1. Swap two variables without using a temporary variable
Description: Write a program to swap the values of two variables (e.g., a and b) without using a
third variable.
*/



List<int> swapVariables(int a , int b){

 a= a^b;
 b = a^b;
 a = a^b;

return [a,b];
}