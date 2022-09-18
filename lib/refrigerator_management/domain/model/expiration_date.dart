import 'package:freezed_annotation/freezed_annotation.dart';
part 'expiration_date.freezed.dart';

@Freezed()
abstract class ExpirationDate implements _$ExpirationDate {
  ExpirationDate._();

  factory ExpirationDate._internal({
    required DateTime value,
  }) = _ExpirationDate;

  factory ExpirationDate({
    required DateTime value,
  }) {
    return ExpirationDate._internal(
      value: value,
    );
  }

  DateTime getDateBeforeExpiration(int daysBefore) {
    return value.subtract(Duration(days: daysBefore));
  }
}
