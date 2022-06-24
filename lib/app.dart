import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/material_color.dart';
import 'package:refrigerator_management/theme.dart';
import 'package:refrigerator_management/theme/app_theme.dart';
import 'router.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dd',
      theme: ThemeData(
        primarySwatch: MaterialColors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Sawarabi Cothic",
        //colorScheme: ,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MaterialColors.black,
      ),
      themeMode: ThemeMode.system,
      //theme: theme.data,
      //darkTheme: AppTheme.dark().data,
      //themeMode: themeMode,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
  }
}
