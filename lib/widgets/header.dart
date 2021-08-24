import 'dart:isolate';

import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Padding(
      padding: EdgeInsets.only(left: isMobile ? 5.w : 10.w),
      child: Text(
        text,
        style: TextStyle(
          fontSize: isMobile ? 20.sp : 15.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
