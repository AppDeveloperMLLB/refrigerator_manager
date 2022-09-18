import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:refrigerator_management/local_notification/local_notification.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:refrigerator_management/theme/app_theme.dart';
import 'router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    LocalNotification.instance.initialize();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      FlutterAppBadger.removeBadge();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO:アプリのテーマを考えたい(カスタムにすると、カレンダーとかのボタンがおかしくなる。。。
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dd',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Sawarabi Cothic",
      ),
      themeMode: ThemeMode.system,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
  }
}
