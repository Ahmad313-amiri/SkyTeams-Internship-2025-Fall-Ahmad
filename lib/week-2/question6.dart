/*
Name : Ahmad Amiri
Date : 2025-11-17

Question-6: Convert total seconds into hours, minutes, and seconds
Description: Convert a given number of seconds into hours, minutes, and seconds format.
*/

String calculateTime(int totalSec) {
  int hour = totalSec ~/ 3600;
  int min = (totalSec % 3600) ~/ 60;
  int sec = totalSec % 60;

  return '$hour hr, $min min, $sec sec';
}
