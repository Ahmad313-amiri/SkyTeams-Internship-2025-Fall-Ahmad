/*
Name : Ahmad Amiri
Date : 2025-11-30

Question-16:  Fibonacci sequence
Description: Print the Fibonacci sequence up to N terms.
Example:
Input:
7
Output:
0, 1, 1, 2, 3, 5, 8

*/


void main(){

  // var result =  calculateFibonacci(3);
  print(calculateFibonacci(3));


}


 List calculateFibonacci(int number){
List<int> fibSeq = [];
  int a =0;
  int b = 1;
  int next ;

  fibSeq.add(a); fibSeq.add(b);

   for(int i= 2; i<number; i++){
     next = a+b;
     a = b;
     b = next;
     // fibSeq.add(a);
     fibSeq.add(next);

   }
return fibSeq;
}
