import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question18.dart';

void main() {
  group('Multiplication Table String Tests', () {
    test('Table for 5', () {
      String result = createMultiplicationTable(5);

      List<String> lines = result.split('\n');

      expect(lines.length, 10);
      expect(lines.first, '1 x 5 = 5');
      expect(lines.last, '10 x 5 = 50');
      expect(lines[4], '5 x 5 = 25');
    });

    test('Table for 1', () {
      String result = createMultiplicationTable(1);
      List<String> lines = result.split('\n');
      expect(lines.first, '1 x 1 = 1');
      expect(lines.last, '10 x 1 = 10');
    });

    test('Table for 12', () {
      String result = createMultiplicationTable(12);
      List<String> lines = result.split('\n');
      expect(lines[5], '6 x 12 = 72');
    });
  });
}
