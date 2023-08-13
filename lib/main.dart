import 'package:app_test/view/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:app_test/theme/native_theme.dart';
import 'package:app_test/widgets/app_widgets/console_error_widget.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'helpers/shared_helpers.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await SharedHelpers.initilizeApp();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ConsoleErrorWidget(
      flutterErrorDetails: details,
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.grey);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
    ));
    return MultiProvider(
      providers: SharedHelpers().controllers,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'App Test',
        theme: NativeThemeData().nativeLightTheme(),
        home: const Dashboard(),
      ),
    );
  }
}
