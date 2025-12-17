/*

Name : Ahmad Amiri
Date : 2025-12-7

Question-9: String Compression
    Description: Compress using counts of consecutive characters.
    Example:
    "aabcccccaaa" → "a2b1c5a3"
*/


void main(){

 print(stringCompression('aaavddbb')) ;

}

String stringCompression(String input) {
  String result = "";
  int count = 1;

  for (int i = 0; i < input.length; i++) {

    if (i < input.length - 1 && input[i] == input[i + 1]) {
      count++;
    } else {
      result += input[i] + count.toString();
      count = 1;
    }
  }

  return result;
}


