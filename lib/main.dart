import 'package:dreezer/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'views/DreezerHome.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          backgroundColor: Colors.white,
          primaryColor: const Color.fromRGBO(239, 28, 27, 1),
        ),
        home: Music(),
        //  theme: ThemeData(fontFamily: AppFonts.sfPro, primarySwatch: Colors.blue, scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.0,
              boldText: false,
            ),
            child: child!,
          );
        },
      );
    });
  }
}