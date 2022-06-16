import 'package:flutter/material.dart';
import 'package:refrigerator_management/material_color.dart';
import 'package:refrigerator_management/theme.dart';
import 'router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //colorScheme: ,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MaterialColors.black,
      ),
      // Add dark theme
      // Add theme mode
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
    // return BlocProvider<PlaybackBloc>(
    //   create: (context) => PlaybackBloc(),
    //   child: DynamicColorBuilder(
    //     builder: (lightDynamic, darkDynamic) => ThemeProvider(
    //         lightDynamic: lightDynamic,
    //         darkDynamic: darkDynamic,
    //         settings: settings,
    //         child: NotificationListener<ThemeSettingChange>(
    //           onNotification: (notification) {
    //             settings.value = notification.settings;
    //             return true;
    //           },
    //           child: ValueListenableBuilder<ThemeSettings>(
    //             valueListenable: settings,
    //             builder: (context, value, _) {
    //
    //             },
    //           ),
    //         )),
    //   ),
    // );
  }
}
