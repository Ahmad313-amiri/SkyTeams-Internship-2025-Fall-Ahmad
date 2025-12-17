import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week3/question-20.dart';


void main() {

  test('Underweight case', () {
    expect(calculateBmi(45, 1.70), 'BMI = 15.57 (UnderWeight)');
  });

  test('Normal weight case', () {
    expect(calculateBmi(60, 1.70), 'BMI = 20.76 (NormalWeight)');
  });


  test('Overweight case', () {
    expect(calculateBmi(80, 1.70), 'BMI = 27.68 (OverWeight)');
  });

  test('Obese case', () {
    expect(calculateBmi(95, 1.70), 'BMI = 32.87 (Obse)');
  });

  test('Height given in cm', () {
    expect(calculateBmi(70, 175), 'BMI = 22.86 (NormalWeight)');
  });


  test('BMI exactly 30', () {
    expect(calculateBmi(86.7, 1.7), 'BMI = 30 (Obse)');
  });

}
