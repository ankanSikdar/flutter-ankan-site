import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      width: 100.h,
      child: Column(
        children: [
          Header(text: 'Featured Project'),
          SizedBox(
            height: 1.w,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(isMobile ? 15.0 : 25.0),
            child: Image.asset(
              'assets/images/featured_project.png',
              width: isMobile ? 80.w : 150.w,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
