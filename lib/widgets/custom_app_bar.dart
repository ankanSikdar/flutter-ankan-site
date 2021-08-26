import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  final void Function() onMenuTap;

  const CustomAppBar({Key? key, required this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return SliverAppBar(
      centerTitle: isMobile ? true : false,
      pinned: true,
      title: Image.asset(
        'assets/images/logo_light.png',
        height: isMobile ? 10.h : 5.h,
        fit: BoxFit.fitHeight,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: isMobile ? 0 : 5.w),
          child: IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.solidLightbulb),
          ),
        ),
      ],
    );
  }
}
