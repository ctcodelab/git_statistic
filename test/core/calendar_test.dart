import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/utils/calendar.dart';

void main() {
  group('Calendar', () {
    test('findFirstDateOfTheWeek', () {
      expect(Calendar.findFirstDateOfTheWeek(DateTime(2023, 2, 10)), DateTime(2023, 2, 6));

      // When the first day, it's the day from the previous month
      expect(Calendar.findFirstDateOfTheWeek(DateTime(2023, 2, 2)), DateTime(2023, 1, 30));
    });

    test('findFirstDateOfPreviousWeek', () {
      expect(Calendar.findFirstDateOfPreviousWeek(DateTime(2023, 2, 10)), DateTime(2023, 1, 30));
    });

    test('findLastDateOfTheWeek', () {
      expect(Calendar.findLastDateOfTheWeek(DateTime(2023, 2, 10)), DateTime(2023, 2, 12));

      expect(Calendar.findLastDateOfTheWeek(DateTime(2023, 1, 30)), DateTime(2023, 2, 5));
    });
  });
}
