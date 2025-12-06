/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-19:   Pattern Printing – Pyramid
Example:
Input:
5
Output:
*
***
*****
*******
*********
*/


void main (){

 pyramidPattern(5);
}



void pyramidPattern(int number){
  for(int i = 1; i<=number; i++){
    String space = " "*(number -i);
    int  stars =  2* i-1;

    print( space + "*"*stars);

  }



}