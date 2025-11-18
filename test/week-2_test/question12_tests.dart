import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question12.dart';


void main() {
  group('Traffic Light System Tests', () {

    test('Red color → Stop', () {
      expect(trafficLighSystem('Red'), 'Stop');
      expect(trafficLighSystem('red'), 'Stop'); // تست بدون حساسیت به حروف
    });

    test('Yellow color → Ready', () {
      expect(trafficLighSystem('Yellow'), 'Ready');
      expect(trafficLighSystem('yellow'), 'Ready');
    });

    test('Green color → Go', () {
      expect(trafficLighSystem('Green'), 'Go');
      expect(trafficLighSystem('green'), 'Go');
    });

    test('Invalid color → Invalid color', () {
      expect(trafficLighSystem('Blue'), 'Invalid color');
      expect(trafficLighSystem(''), 'Invalid color');
      expect(trafficLighSystem('purple'), 'Invalid color');
    });

    test('Mixed case inputs', () {
      expect(trafficLighSystem('ReD'), 'Stop');
      expect(trafficLighSystem('yElLoW'), 'Ready');
      expect(trafficLighSystem('GrEeN'), 'Go');
    });

  });
}
