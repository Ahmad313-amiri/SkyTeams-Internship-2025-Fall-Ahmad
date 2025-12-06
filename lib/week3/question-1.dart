/*
Name : Ahmad Amiri
Date : 2025-11-22

Question 1 : T Count vowels in a string
Description: Count the number of vowels (a, e, i, o, u) in a given string.
Example:
Input:
"SkyTeams Internship"
Output:
6
*/

void main(){
  var result = countVowels('Sky Teams intership');
  print(result);

}

// int countVowels(String input){
//  String vowels ='AaEeIiOoUu';
//   int count =0;
//
//
//
//   for(int i=0; i<input.length; i++){
//     if(vowels.contains(input[i])){
//       count ++;
//     }
//
//   }
//   if(input == ''){
//     return 0;
//   }
//   return count;
// }
int countVowels(String input) {
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    var ch = input[i];

    if (ch == 'a' || ch == 'A' ||
        ch == 'e' || ch == 'E' ||
        ch == 'i' || ch == 'I' ||
        ch == 'o' || ch == 'O' ||
        ch == 'u' || ch == 'U') {
      count++;
    }
  }

  return count;
}



