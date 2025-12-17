import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-4/question17.dart';


void main() {
  group('Sentence Abbreviation Tests', () {
    test('Example sentence', () {
      expect(sentenceAbbreviation("I am learning JavaScript"), "I a l J");
    });

    test('Single word', () {
      expect(sentenceAbbreviation("Hello"), "H");
    });

    test('Empty sentence', () {
      expect(sentenceAbbreviation(""), "");
    });

    test('Sentence with multiple spaces', () {
      expect(sentenceAbbreviation("I  am   learning"), "I a l");
    });

    test('Sentence with punctuation', () {
      expect(sentenceAbbreviation("Hello, world!"), "H w");
    });

    test('Sentence with numbers', () {
      expect(sentenceAbbreviation("I have 2 cats"), "I h 2 c");
    });

    test('All lowercase words', () {
      expect(sentenceAbbreviation("dart flutter test"), "d f t");
    });

    test('All uppercase words', () {
      expect(sentenceAbbreviation("DART FLUTTER TEST"), "D F T");
    });
  });
}