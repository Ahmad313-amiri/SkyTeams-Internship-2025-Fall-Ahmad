import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question9.dart';

void main() {

  test('Grade A', () {
    List<int> grades = [90, 95, 100, 99];
    for (int g in grades) {
      expect(defineGrade(g), 'A');
    }
  });

  test('Grade B', () {
    List<int> grades = [70, 75, 80, 85, 89];
    for (int g in grades) {
      expect(defineGrade(g), 'B');
    }
  });

  test('Grade C', () {
    List<int> grades = [50, 55, 60, 65, 69];
    for (int g in grades) {
      expect(defineGrade(g), 'C');
    }
  });

  test('Grade D', () {
    List<int> grades = [30, 35, 40, 44];
    for (int g in grades) {
      expect(defineGrade(g), 'D');
    }
  });

  test('Grade E', () {
    List<int> grades = [10, 15, 20, 25, 29];
    for (int g in grades) {
      expect(defineGrade(g), 'E');
    }
  });

  test('Grade F', () {
    List<int> grades = [0, 1, 5, 9];
    for (int g in grades) {
      expect(defineGrade(g), 'F');
    }
  });

  test('Invalid grades', () {
    List<int> grades = [-10, -1, 101, 150];
    for (int g in grades) {
      expect(defineGrade(g), 'Invalid grade');
    }
  });

  test('Edge cases', () {
    expect(defineGrade(89), 'B');
    expect(defineGrade(90), 'A');
    expect(defineGrade(79), 'B');
    expect(defineGrade(80), 'B');
    expect(defineGrade(69), 'C');
    expect(defineGrade(70), 'B');
    expect(defineGrade(59), 'C');
    expect(defineGrade(60), 'C');
    expect(defineGrade(49), 'D');
    expect(defineGrade(50), 'C');
    expect(defineGrade(39), 'D');
    expect(defineGrade(40), 'D');
    expect(defineGrade(29), 'E');
    expect(defineGrade(30), 'D');
    expect(defineGrade(19), 'E');
    expect(defineGrade(20), 'E');
    expect(defineGrade(9), 'F');
    expect(defineGrade(10), 'E');
    expect(defineGrade(0), 'F');
  });

}
