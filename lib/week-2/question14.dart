/*
Name : Ahmad Amiri
Date : 2025-11-18

Question-14:
Check character type
Description: Input a character and determine if it’s a vowel, consonant, digit, or special symbol.
Example:
Input:
a
Output:
Vowel
*/

void main(){

 var result = checkCharacterType('+');
 print(result);

}

String checkCharacterType(String char) {

  List<String> vowels = ['a','e','i','o','u','A','E','I','O','U'];
  List<String> digits = ['0','1','2','3','4','5','6','7','8','9'];

  bool isVowel = false;
  bool isDigit = false;

  if(char.length != 1){
    return 'Enter a single character';
  }
//Vowel
  for(int i = 0; i < vowels.length; i++){
    if(vowels[i] == char){
      isVowel = true;
      break;
    }
  }

  //Digit
  for(int i = 0; i < digits.length; i++){
    if(digits[i] == char){
      isDigit = true;
      break;
    }
  }

  if(isVowel) return 'Vowel';
  if(isDigit) return 'Digit';

  int code = char.codeUnitAt(0);
  if((code >= 'a'.codeUnitAt(0) && code <= 'z'.codeUnitAt(0)) ||
      (code >= 'A'.codeUnitAt(0) && code <= 'Z'.codeUnitAt(0))) {
    return 'Consonant';
  }

  return 'Special character';
}
