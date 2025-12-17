/*

Name : Ahmad Amiri
Date : 2025-12-8

Question-13: String Pattern Matching ("abba")
Description: Check if sentence follows the pattern.
Example: "dog cat cat dog" → True

*/


void main(){


  print(stringPatternMatching("abba", "dog cat cat dog"));
}




bool stringPatternMatching(String pattern, String string){
List<String> words= string.split(' ');


Map<String, String> charToWord ={};
Map<String, String> wordToChar = {};

if(pattern.length != words.length)return false;

for(int i =0; i<pattern.length; i++){
  String char = pattern[i];
  String word = words[i];

  if(charToWord.containsKey(char)){
    if(charToWord[char] !=word)return false;

  }else{
    charToWord[char] = word;
  }


  if(wordToChar.containsKey(word)){
    if(wordToChar[word] !=char)return false;

  }else{
    wordToChar[word] =char;
  }

}
return true;

}
