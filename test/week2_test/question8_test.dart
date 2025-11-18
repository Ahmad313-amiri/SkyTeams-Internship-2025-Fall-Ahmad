import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question8.dart';

void main() {

  test('Negative numbers', () {
    expect(checkNums(-1), 'The number is Negative');
    expect(checkNums(-100), 'The number is Negative');
    expect(checkNums(-9999), 'The number is Negative');
  });

  test('Positive numbers', () {
    expect(checkNums(1), 'The number is positive');
    expect(checkNums(100), 'The number is positive');
    expect(checkNums(9999), 'The number is positive');
  });

  test('Zero', () {
    expect(checkNums(0), 'The number is Zero');
  });

  test('Mixed numbers', () {
    List<int> nums = [-10, -5, 0, 5, 10];
    List<String> expected = [
      'The number is Negative',
      'The number is Negative',
      'The number is Zero',
      'The number is positive',
      'The number is positive'
    ];

    for(int i = 0; i < nums.length; i++){
      expect(checkNums(nums[i]), expected[i]);
    }
  });

}
