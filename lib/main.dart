import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'controllers/theme_controller.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ankan Sikdar',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: Home(),
      ),
    );
  }
}
