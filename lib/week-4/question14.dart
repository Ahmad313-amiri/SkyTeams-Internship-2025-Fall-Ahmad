/*

Name : Ahmad Amiri
Date : 2025-12-8

Question-14: All Permutations of a String 
Description: Generate all permutations.
Input: "abc" → abc, acb, bac, ...

*/

void main(){
  String input = 'abc';
  List<String> result = permutationsOfString(input);

  print('$input → ${result.join(', ')}');

}

List<String>permutationsOfString(String input){
  if (input.length <= 1) {
    return [input];
  }

  List<String> list = [];
  for(int i=0; i<input.length; i++){
    String currnet =input[i];
    String subString = input.substring(0,i)+input.substring(i+1);

    for(String sub in permutationsOfString(subString)){
      list.add(currnet+sub);

    }


  }

  return list;


}

