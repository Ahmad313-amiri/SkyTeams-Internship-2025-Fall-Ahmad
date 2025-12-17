import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-12.dart';


void main() {

  test('palindrome 121', () {
    expect(checkPalindrome(121), 'Palindrome');
  });

  test('not palindrome 123', () {
    expect(checkPalindrome(123), 'Not Palindrome');
  });

  test('palindrome 111', () {
    expect(checkPalindrome(111), 'Palindrome');
  });

  test('palindrome 454', () {
    expect(checkPalindrome(454), 'Palindrome');
  });

  test('not palindrome 789', () {
    expect(checkPalindrome(789), 'Not Palindrome');
  });

  test('single digit 0', () {
    expect(checkPalindrome(0), 'Palindrome');
  });

  test('single digit 1', () {
    expect(checkPalindrome(1), 'Palindrome');
  });

  test('single digit 7', () {
    expect(checkPalindrome(7), 'Palindrome');
  });

  test('even length palindrome 1221', () {
    expect(checkPalindrome(1221), 'Palindrome');
  });

  test('even length palindrome 3443', () {
    expect(checkPalindrome(3443), 'Palindrome');
  });

  test('even length palindrome 1001', () {
    expect(checkPalindrome(1001), 'Palindrome');
  });

  test('even length not palindrome 1234', () {
    expect(checkPalindrome(1234), 'Not Palindrome');
  });

  test('odd length palindrome 12321', () {
    expect(checkPalindrome(12321), 'Palindrome');
  });

  test('odd length palindrome 70707', () {
    expect(checkPalindrome(70707), 'Palindrome');
  });

  test('odd length palindrome 12521', () {
    expect(checkPalindrome(12521), 'Palindrome');
  });

  test('odd length not palindrome 12345', () {
    expect(checkPalindrome(12345), 'Not Palindrome');
  });

  test('large palindrome 123454321', () {
    expect(checkPalindrome(123454321), 'Palindrome');
  });

  test('large palindrome 100000001', () {
    expect(checkPalindrome(100000001), 'Palindrome');
  });

  test('large not palindrome 987654321', () {
    expect(checkPalindrome(987654321), 'Not Palindrome');
  });

  test('two digit not palindrome 10', () {
    expect(checkPalindrome(10), 'Not Palindrome');
  });

  test('three digit palindrome 101', () {
    expect(checkPalindrome(101), 'Palindrome');
  });

  test('three digit not palindrome 110', () {
    expect(checkPalindrome(110), 'Not Palindrome');
  });

  test('three digit not palindrome 100', () {
    expect(checkPalindrome(100), 'Not Palindrome');
  });

  test('repeated zeros 1001', () {
    expect(checkPalindrome(1001), 'Palindrome');
  });

  test('repeated zeros 2002', () {
    expect(checkPalindrome(2002), 'Palindrome');
  });

  test('repeated zeros 3003', () {
    expect(checkPalindrome(3003), 'Palindrome');
  });

  test('five digit palindrome 10001', () {
    expect(checkPalindrome(10001), 'Palindrome');
  });

}
