
import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question3.dart';


void main() {
  group('calculateAreaPerimeter Tests', () {

    test('Positive numbers', () {
      final result = calculateAreaPerimeter(5, 3);
      expect(result["area"], equals(15));
      expect(result["perimeter"], equals(16));
    });

    test('Square values (length == width)', () {
      final result = calculateAreaPerimeter(4, 4);
      expect(result["area"], equals(16));
      expect(result["perimeter"], equals(16));
    });

    test('Length = 1, Width = big number', () {
      final result = calculateAreaPerimeter(1, 100);
      expect(result["area"], equals(100));
      expect(result["perimeter"], equals(202));
    });

    test('Width = 1, Length = big number', () {
      final result = calculateAreaPerimeter(200, 1);
      expect(result["area"], equals(200));
      expect(result["perimeter"], equals(402));
    });

    test('Zero values (area = 0)', () {
      final result = calculateAreaPerimeter(0, 5);
      expect(result["area"], equals(0));
      expect(result["perimeter"], equals(10));
    });

    test('Both zero values', () {
      final result = calculateAreaPerimeter(0, 0);
      expect(result["area"], equals(0));
      expect(result["perimeter"], equals(0));
    });

    test('Negative numbers (mathematically area still negative)', () {
      final result = calculateAreaPerimeter(-4, 3);
      expect(result["area"], equals(-12));
      expect(result["perimeter"], equals(-2));
    });

    test('Very large numbers', () {
      final result = calculateAreaPerimeter(1000000, 2000000);
      expect(result["area"], equals(2000000000000));
      expect(result["perimeter"], equals(6000000));
    });
  });
}
