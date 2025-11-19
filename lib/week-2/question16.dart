/*
Name : Ahmad Amiri
Date : 2025-11-19

Question-16:
S. Print numbers from 1 to 100
Description: Use a loop to print num\bers sequentially.
Example:
Output:
1, 2, 3, …, 100
*/


String printNumbers() {
  List<int> listNums =[];
  for (int i = 1; i <= 100; i++) {
    listNums.add(i);
  }
  return listNums.join(', ');
}


