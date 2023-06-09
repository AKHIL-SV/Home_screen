import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:home_screen_jp/view/home_page.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 768),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Home',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const HomePage(),
        );
      },
    );
  }
}
