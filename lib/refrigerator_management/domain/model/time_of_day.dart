import 'package:freezed_annotation/freezed_annotation.dart';
part 'time_of_day.freezed.dart';

@Freezed(copyWith: false)
abstract class TimeOfDay implements _$TimeOfDay {
  TimeOfDay._();

  factory TimeOfDay._internal({
    required int hour,
    required int min,
  }) = _TimeOfDay;

  factory TimeOfDay({
    required int hour,
    required int min,
  }) {
    if (hour < 0 || 23 < hour) {
      throw Exception("Hour range is not between 0 and 23");
    }

    if (min < 0 || 59 < min) {
      throw Exception("min range is not between 0 and 59");
    }

    return TimeOfDay._internal(
      hour: hour,
      min: min,
    );
  }

  TimeOfDay copyWith({int? hour, int? min}) {
    final copiedHour = hour ?? this.hour;
    final copiedMin = min ?? this.min;

    return TimeOfDay(hour: copiedHour, min: copiedMin);
  }
}
