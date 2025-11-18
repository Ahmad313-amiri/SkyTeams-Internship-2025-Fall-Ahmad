import 'package:flutter_test/flutter_test.dart';
import 'package:skyteams/week-2/question13.dart';
import 'package:flutter/material.dart';


void main() {
  group('describeMonth (switch-case) Tests', () {

    test('Valid months', () {
      expect(describeMonth(1), 'January, 31 days');
      expect(describeMonth(2), 'February, 28 or 29 days');
      expect(describeMonth(3), 'March, 31 days');
      expect(describeMonth(4), 'April, 30 days');
      expect(describeMonth(5), 'May, 31 days');
      expect(describeMonth(6), 'June, 30 days');
      expect(describeMonth(7), 'July, 31 days');
      expect(describeMonth(8), 'August, 31 days');
      expect(describeMonth(9), 'September, 30 days');
      expect(describeMonth(10), 'October, 31 days');
      expect(describeMonth(11), 'November, 30 days');
      expect(describeMonth(12), 'December, 31 days');
    });

    test('Invalid months', () {
      expect(describeMonth(0), 'Invalid month number. Please enter a number between 1 and 12.');
      expect(describeMonth(-5), 'Invalid month number. Please enter a number between 1 and 12.');
      expect(describeMonth(13), 'Invalid month number. Please enter a number between 1 and 12.');
    });

  });
}
