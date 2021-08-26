import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      width: double.infinity,
      height: 20.w,
      color: Theme.of(context).hintColor,
      child: Center(
        child: Text(
          'Made with ❤ in Flutter',
          style: TextStyle(
            fontSize: isMobile ? 12.sp : 8.sp,
          ),
        ),
      ),
    );
  }
}
