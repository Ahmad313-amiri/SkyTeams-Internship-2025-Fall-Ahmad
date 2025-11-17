/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-3 :  Calculate the area and perimeter of a rectangle
Description: Given length and width, calculate and display both area and perimeter.
*/



Map<String, int> calculateAreaPerimeter(int length, int width) {
  final int area = length * width;
  final int perimeter = 2 * (length + width);

  return {
    "area": area,
    "perimeter": perimeter,
  };
}
