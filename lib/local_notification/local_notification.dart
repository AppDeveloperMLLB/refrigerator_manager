import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotification {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationPlugin;
  LocalNotification._();
  static final instance = LocalNotification._();

  Future<void> initialize() async {
    _flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    const MacOSInitializationSettings initializationSettingsMacOS =
        MacOSInitializationSettings();
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: initializationSettingsMacOS);
    await _flutterLocalNotificationPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);

    tz.initializeTimeZones();
    //tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future<void> zonedSchedule({
    required int id,
    required String title,
    required String body,
    required DateTime notificationDateTime,
  }) async {
    // final timeZone = tz.TimeZone();

    // The device's timezone.
    //String timeZoneName = await tz.getTimeZoneName();

    // Find the 'current location'
    final location = tz.local;
    debugPrint("location = ${location.toString()}");

    final scheduledDate = tz.TZDateTime.from(notificationDateTime, location);
    debugPrint("tz date = ${scheduledDate.toString()}");

    await _flutterLocalNotificationPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
            'your channel id', 'your channel name',
            channelDescription: 'your channel description'),
        iOS: IOSNotificationDetails(),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  void onDidReceiveLocalNotification(
      int num, String? str1, String? str2, String? str3) {
    debugPrint('$num $str1 $str2 $str3');
  }

  void selectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    // );
    //_flutterLocalNotificationPlugin.show(id, title, body, notificationDetails)
    //_flutterLocalNotificationPlugin.show(id, title, body, notificationDetails)
  }
}
