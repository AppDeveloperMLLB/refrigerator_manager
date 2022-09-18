import 'package:refrigerator_management/local_notification/local_notification.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/expiration_date.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/time_of_day.dart';

class NotificationRegister {
  final int _daysBeforeExpiration = 3;
  final int _notificationId;
  final ExpirationDate _expirationDate;
  final Ingredient _ingredient;
  final TimeOfDay _notificationTimeOfDay;

  NotificationRegister({
    required Ingredient ingredient,
    required int notificationId,
    required ExpirationDate expirationDate,
    required TimeOfDay notificationTimeOfDay,
  })  : _ingredient = ingredient,
        _notificationId = notificationId,
        _expirationDate = expirationDate,
        _notificationTimeOfDay = notificationTimeOfDay;

  void register() {
    final localNotification = LocalNotification.instance;

    // Register for pre-deadline notification
    localNotification.zonedSchedule(
      id: _notificationId,
      title: getTitleDaysBeforeExpiration(),
      body:
          getBodyDaysBeforeExpiration(_ingredient.name, _daysBeforeExpiration),
      notificationDateTime: toNotificationDateTime(
          _expirationDate.getDateBeforeExpiration(_daysBeforeExpiration)),
    );

    localNotification.zonedSchedule(
        id: _notificationId,
        title: getTitleExpiration(),
        body: getBodyExpiration(_ingredient.name),
        notificationDateTime: toNotificationDateTime(_expirationDate.value));
  }

  DateTime toNotificationDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day,
        _notificationTimeOfDay.hour, _notificationTimeOfDay.min);
  }

  String getTitleDaysBeforeExpiration() {
    return "期限切れ間近の食材あり";
  }

  String getBodyDaysBeforeExpiration(
      IngredientName ingredientName, int daysBeforeExpiration) {
    return "「${ingredientName.name}」の期限が$daysBeforeExpiration日後に切れてしまいます。";
  }

  String getTitleExpiration() {
    return "本日期限切れの食材あり";
  }

  String getBodyExpiration(IngredientName ingredientName) {
    return "「${ingredientName.name}」の期限が今日切れてしまいます。";
  }
}
