
import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question4.dart';

void main() {
  group("Temperature Conversion Tests", () {
    test("Convert Celsius to Fahrenheit", () {
      // 0°C → 32°F
      expect(convertTemp(0, TempType.CtoF), 32);

      // 100°C → 212°F
      expect(convertTemp(100, TempType.CtoF), 212);

      // -40°C → -40°F
      expect(convertTemp(-40, TempType.CtoF), -40);
    });

    test("Convert Fahrenheit to Celsius", () {
      // 32°F → 0°C
      expect(convertTemp(32, TempType.FtoC), 0);

      // 212°F → 100°C
      expect(convertTemp(212, TempType.FtoC), 100);

      // -40°F → -40°C
      expect(convertTemp(-40, TempType.FtoC), -40);
    });
  });
}
