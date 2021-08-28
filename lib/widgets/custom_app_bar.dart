import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  final void Function(String name) onSectionTap;
  final void Function() onMenuTap;
  CustomAppBar({Key? key, required this.onSectionTap, required this.onMenuTap})
      : super(key: key);

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return SliverAppBar(
      leading: isMobile
          ? IconButton(
              onPressed: onMenuTap,
              icon: FaIcon(
                FontAwesomeIcons.stream,
                color: Theme.of(context).primaryColor,
              ),
            )
          : null,
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
      actions: isMobile
          ? [
              ChangeTheme(isMobile: isMobile, themeController: themeController),
            ]
          : [
              SectionButton(onSectionTap: onSectionTap, title: 'About'),
              SectionButton(onSectionTap: onSectionTap, title: 'Featured'),
              SectionButton(onSectionTap: onSectionTap, title: 'Projects'),
              SectionButton(onSectionTap: onSectionTap, title: 'Education'),
              SectionButton(onSectionTap: onSectionTap, title: 'Contact'),
              ChangeTheme(isMobile: isMobile, themeController: themeController),
            ],
    );
  }
}

class SectionButton extends StatelessWidget {
  const SectionButton({
    Key? key,
    required this.onSectionTap,
    required this.title,
  }) : super(key: key);

  final void Function(String name) onSectionTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onSectionTap(title);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 8.sp),
      ),
    );
  }
}

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({
    Key? key,
    required this.isMobile,
    required this.themeController,
  }) : super(key: key);

  final bool isMobile;
  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(right: isMobile ? 0 : 5.w, left: isMobile ? 0 : 2.w),
      child: IconButton(
        onPressed: () {
          themeController
              .setThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
        },
        icon: FaIcon(FontAwesomeIcons.solidLightbulb),
      ),
    );
  }
}
