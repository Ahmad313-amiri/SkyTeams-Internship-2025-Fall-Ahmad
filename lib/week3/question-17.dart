/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-17:  Pattern Printing – Right-angled Triangle
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


 patternPrinting(4);
}

patternPrinting(int number){

  for(int i=0; i<= number; i++){
    print("*" * i);
  }
}