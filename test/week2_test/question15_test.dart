import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question15.dart';

void main() {
  group('Triangle validity and type tests', () {
    test('Scalene triangle', () {
      expect(triangleType(3, 4, 5), 'Valid triangle, Scalene');
    });

    test('Equilateral triangle', () {
      expect(triangleType(5, 5, 5), 'Valid triangle, Equilateral');
    });

    test('Isosceles triangle', () {
      expect(triangleType(5, 5, 8), 'Valid triangle, Isosceles');
    });

    test('Invalid triangle (sum of two sides <= third)', () {
      expect(triangleType(1, 2, 3), 'Invalid triangle');
    });

    test('Invalid triangle (another case)', () {
      expect(triangleType(2, 2, 5), 'Invalid triangle');
    });
  });
}
