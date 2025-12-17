/*
Name : Ahmad Amiri
Date : 2025-12-3

Question-25: Number Guessing Game
Description:
• The program randomly selects a number between 1 and 100.
• The user must guess the number.
• The program gives hints like “Too High” or “Too Low”.
• Continue until the user guesses correctly.


*/

import 'dart:io';
import 'dart:math';

void main() {
  guessNumber();
}

void guessNumber() {
  var random = Random();
  int target = random.nextInt(100) + 1;

  print('Guess a number between 1 to 100');

  while (true) {
    String? input = stdin.readLineSync();

    if (input == null) {
      print('Input cannot be empty. Try again.');
      continue;
    }

    int number;
    try {
      number = int.parse(input);
    } catch (e) {
      print('Invalid input! Please enter a number between 1 to 100.');
      continue;
    }

    if (number < 1 || number > 100) {
      print('Number out of range! Enter between 1 to 100.');
      continue;
    }

    if (number == target) {
      print('Congratulations! Your guess is correct.');
      break;
    } else if (number < target) {
      print('Too low. Try a bigger number.');
    } else {
      print('Too high. Try a smaller number.');
    }
  }
}
