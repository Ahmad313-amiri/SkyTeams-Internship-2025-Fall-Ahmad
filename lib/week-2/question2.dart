/*
Name : Ahmad Amiri
Date : 2025-11-14

Question-2 :  Find the largest and smallest of three numbers
Description: Read three integers and print the largest and smallest.
*/


String findMinMaxNum(int a, int b, int c){

  int min=a;
  int max =a;

if(b<min)
  min =b;
if(b > max)
  max = b;
if(c<min)
  min = c;
if (c > max) {
 max = c;
}
return '$min,$max';
}