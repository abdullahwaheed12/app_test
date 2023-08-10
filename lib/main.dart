import 'package:flutter/material.dart';
import 'package:App_Test/theme/native_theme.dart';
import 'package:App_Test/widgets/app_widgets/console_error_widget.dart';
import 'package:provider/provider.dart';

import 'helpers/shared_helpers.dart';
import 'view/pay_to_reserved/pay_to_reserved.dart';

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

    return MultiProvider(
      providers: SharedHelpers().controllers,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'App Test',
        theme: NativeThemeData().nativeLightTheme(),
        home: const PayToReservedScreen(),
      ),
    );
  }
}
