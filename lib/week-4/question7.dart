/*

Name : Ahmad Amiri
Date : 2025-12-7

Question-7: Rock, Paper, Scissors Game
Description: Simulate a game using random computer choices.
*/



import 'dart:math';

void main() {
  List<String> options = ['Rock', 'Paper', 'Scissors'];


  String userChoice = 'Rock';
  String computerChoice = options[Random().nextInt(3)];

  print('User chose: $userChoice');
  print('Computer chose: $computerChoice');

  String winner = playRPS(userChoice, computerChoice);

  if (winner == "Tie") {
    print("It's a tie!");
  } else if (winner == "User") {
    print("You win!");
  } else {
    print("Computer wins!");
  }
}


String playRPS(String userChoice, String computerChoice) {
  if (userChoice == computerChoice) {
    return "Tie";
  } else if ((userChoice == 'Rock' && computerChoice == 'Scissors') ||
      (userChoice == 'Paper' && computerChoice == 'Rock') ||
      (userChoice == 'Scissors' && computerChoice == 'Paper')) {
    return "User";
  } else {
    return "Computer";
  }
}

