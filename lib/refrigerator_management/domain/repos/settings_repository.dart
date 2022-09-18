import 'package:refrigerator_management/refrigerator_management/domain/model/time_of_day.dart';

abstract class SettingRepository {
  TimeOfDay getNotificationTime();
}
