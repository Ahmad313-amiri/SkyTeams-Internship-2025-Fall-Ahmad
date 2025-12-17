import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question7.dart';

void main() {
  group('Rock Paper Scissors Tests', () {
    List<String> options = ['Rock', 'Paper', 'Scissors'];

    for (var user in options) {
      for (var computer in options) {
        String expected;
        if (user == computer) {
          expected = "Tie";
        } else if ((user == 'Rock' && computer == 'Scissors') ||
            (user == 'Paper' && computer == 'Rock') ||
            (user == 'Scissors' && computer == 'Paper')) {
          expected = "User";
        } else {
          expected = "Computer";
        }

        test('User: $user vs Computer: $computer → $expected', () {
          expect(playRPS(user, computer), expected);
        });
      }
    }
  });
}
