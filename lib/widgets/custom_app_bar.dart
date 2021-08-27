import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key}) : super(key: key);

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return SliverAppBar(
      centerTitle: isMobile ? true : false,
      pinned: true,
      title: GetBuilder<ThemeController>(builder: (controller) {
        if (controller.themeMode == ThemeMode.light) {
          return Image.asset(
            'assets/images/logo_light.png',
            height: isMobile ? 10.h : 5.h,
            fit: BoxFit.fitHeight,
          );
        } else {
          return Image.asset(
            'assets/images/logo_dark.png',
            height: isMobile ? 10.h : 5.h,
            fit: BoxFit.fitHeight,
          );
        }
      }),
      actions: [
        Container(
          margin: EdgeInsets.only(right: isMobile ? 0 : 5.w),
          child: IconButton(
            onPressed: () {
              themeController.setThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
            icon: FaIcon(FontAwesomeIcons.solidLightbulb),
          ),
        ),
      ],
    );
  }
}
