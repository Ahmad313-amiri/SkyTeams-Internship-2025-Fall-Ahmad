/*

Name : Ahmad Amiri
Date : 2025-12-8

Question-12: 12. Character Frequency Counter
Description: Count occurrences of characters.
Input: "banana" → {b:1, a:3, n:2

*/

void main(){

  var result= characterFrequencyCounter('banana');
  print(result);
}
Map<String, int> characterFrequencyCounter(String string){

Map<String, int> frequency = {};

for(int i =0; i<string.length; i++){
  String char = string[i];
  if(frequency.containsKey(char)){

    frequency[char] = frequency[char]!+1;
  }else{
    frequency[char] = 1;
  }


}

return frequency;
}





