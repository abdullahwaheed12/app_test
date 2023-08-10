import 'package:flutter/material.dart';
import 'package:App_Test/controller/general_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view/pay_to_reserved/pay_provider.dart';
import '../view/search_movie/serach_provider.dart';

class SharedHelpers {
  static Future<void> initilizeApp() async {
    WidgetsFlutterBinding.ensureInitialized();

    // await SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    // Get.put(GeneralController());
  }

  final List<SingleChildWidget> controllers = [
    ChangeNotifierProvider(create: (context) => GeneralProvider()),
    ChangeNotifierProvider(create: (context) => SearchMovieProvider()),
    ChangeNotifierProvider(create: (context) => PayProvider()),
    // ChangeNotifierProvider(
    //   create: (context) => UserController(),
    // ),
  ];
}
