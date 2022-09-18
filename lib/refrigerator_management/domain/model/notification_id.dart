import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_id.freezed.dart';

@freezed
class NotificationId with _$NotificationId {
  const NotificationId._();
  const factory NotificationId({
    required int value,
  }) = _NotificationId;
}
