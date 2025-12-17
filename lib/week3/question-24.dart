/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-24:  Generate Pascal’s Triangle
Description: Implement pascalTriangle(rows), which prints Pascal’s Triangle up to n rows.
Example:
Input:
5
Output:
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1

*/

void main() {
  var triangle = generatePascalTriangle(5);
  for (var row in triangle) {
    print(row.join(' '));
  }
}

List<List<int>> generatePascalTriangle(int row) {
  List<List<int>> triangle = [];
  if (row < 1) return triangle;

  List<int> previous = [];

  for (int i = 0; i < row; i++) {
    List<int> current = [];
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        current.add(1);
      } else {
        current.add(previous[j - 1] + previous[j]);
      }
    }
    triangle.add(current);
    previous = current;
  }

  return triangle;
}
