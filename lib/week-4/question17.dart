/*

Name : Ahmad Amiri
Date : 2025-12-12

Question-17: Sentence Abbreviation
Description: Convert sentence into first-letter abbreviation.
Example: "I am learning JavaScript" → "I a l J"

*/

void main() {
  print(sentenceAbbreviation("I am learning JavaScript"));

}

String sentenceAbbreviation(String sentence) {
  List<String> words = sentence.split(' ');
  List<String> firstLetters = [];
  for (var word in words) {
    if (word.isNotEmpty) {
      firstLetters.add(word[0]);
    }
  }
  return firstLetters.join(' ');
}
