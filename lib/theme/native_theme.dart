import 'package:flutter/material.dart';
import 'package:App_Test/constants/app_fonts.dart';

class NativeThemeData {
  ThemeData nativeLightTheme() {
    return ThemeData.light().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            // TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
            // TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            // TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
          },
        ),
        // useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F6FA),
        // primaryColor: const Color.fromRGBO(177, 7, 37, 1),
        // primaryColorDark: const Color.fromRGBO(11, 10, 7, 1),
        // primaryColorLight: const Color.fromRGBO(0, 0, 0, 1),
        // primaryTextTheme: const TextTheme(),
        // drawerTheme: const DrawerThemeData(
        //   backgroundColor: Color.fromRGBO(177, 7, 37, 1),
        //   width: 300,
        // ),
        // textButtonTheme: TextButtonThemeData(
        //   style: ButtonStyle(
        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     visualDensity: VisualDensity.compact,
        //     textStyle: MaterialStatePropertyAll(
        //       GoogleFonts.outfit(
        //         fontWeight: FontWeight.w400,
        //         fontSize: 12,
        //         color: const Color.fromRGBO(0, 0, 0, 1),
        //       ),
        //     ),
        //   ),
        // ),

        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     textStyle: MaterialStatePropertyAll(
        //       GoogleFonts.aBeeZee(
        //         fontSize: 25,
        //         fontWeight: FontWeight.w400,
        //         color: Colors.white,
        //       ),
        //     ),
        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     minimumSize: const MaterialStatePropertyAll(
        //       Size(276, 49),
        //     ),
        //     backgroundColor: const MaterialStatePropertyAll(
        //       Color.fromRGBO(92, 176, 254, 1),
        //     ),
        //   ),
        // ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: AppFonts.poppinsRegular,
            fontWeight: FontWeight.w800,
            fontSize: 40,
            color: const Color.fromRGBO(34, 34, 34, 1),
          ),
          bodyMedium: TextStyle(
            fontFamily: AppFonts.poppinsRegular,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: const Color.fromRGBO(34, 34, 34, 1),
          ),
          bodySmall: TextStyle(
            fontFamily: AppFonts.poppinsRegular,
            fontWeight: FontWeight.w400,
            fontSize: 8,
            color: const Color.fromRGBO(34, 34, 34, 1),
          ),
          displayMedium: TextStyle(
            fontFamily: AppFonts.poppinsRegular,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: const Color.fromRGBO(34, 34, 34, 1),
          ),
        )

        // dialogTheme: const DialogTheme(
        //   backgroundColor: Colors.white,
        // ),
        // dialogBackgroundColor: Colors.white,
        // appBarTheme: AppBarTheme(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   actionsIconTheme: const IconThemeData(
        //     color: Color(0xff222222),
        //   ),
        //   titleTextStyle: GoogleFonts.nunito(
        //     fontWeight: FontWeight.w700,
        //     fontSize: 20,
        //     color: const Color.fromRGBO(34, 34, 34, 1),
        //   ),
        // ),
        // outlinedButtonTheme: OutlinedButtonThemeData(
        //   style: ButtonStyle(
        //     textStyle: MaterialStatePropertyAll(
        //       GoogleFonts.roboto(
        //         fontSize: 16,
        //         fontWeight: FontWeight.w700,
        //         color: const Color.fromRGBO(253, 165, 43, 1),
        //       ),
        //     ),
        //     iconColor: const MaterialStatePropertyAll(
        //       Color.fromRGBO(253, 165, 43, 1),
        //     ),
        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     fixedSize: const MaterialStatePropertyAll(
        //       Size(150, 38),
        //     ),
        //     side: const MaterialStatePropertyAll(
        //       BorderSide(
        //         color: Color.fromRGBO(253, 165, 43, 1),
        //         width: 2,
        //       ),
        //     ),
        //     backgroundColor: const MaterialStatePropertyAll(
        //       // Color.fromRGBO(253, 165, 43, 1),
        //       Colors.white,
        //     ),
        //   ),
        // ),
        // iconButtonTheme: const IconButtonThemeData(
        //   style: ButtonStyle(
        //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     visualDensity: VisualDensity.compact,
        //     padding: MaterialStatePropertyAll(
        //       EdgeInsets.zero,
        //     ),

        //     // iconColor: MaterialStatePropertyAll(
        //     //   Colors.white,
        //     // ),
        //   ),
        // ),

        );
  }
}
