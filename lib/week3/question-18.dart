/*
Name : Ahmad Amiri
Date : 2025-11-31

Question-18:  Pattern Printing – Right-aligned Triangle
Example:
Input:
4
Output:
    *
   **
  ***
 ****
*/

void main(){

  rightAlignPatternPrinting(4);


}

void rightAlignPatternPrinting(int number){

  for(int i=1; i<= number; i++){
   String space =" "*(number-i);
   String stars = "*" *i;
   print(space + stars);

  }

}