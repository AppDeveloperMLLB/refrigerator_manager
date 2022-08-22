import 'dart:math';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/repository_locator.dart';
import 'package:refrigerator_management/refrigerator_management/infra/ingredient_repo.dart';
import 'package:refrigerator_management/refrigerator_management/infra/repos/in_memory_ingredient_repo.dart';
import 'app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FCM の通知権限リクエスト
  final messaging = FirebaseMessaging.instance;
  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  final token = await messaging.getToken();
  print('🐯 FCM TOKEN: $token');

  // TODO:dart-definesで切り替える
  RepositoryLocator.instance.register(InMemoryIngredientRepo.instance);
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}
