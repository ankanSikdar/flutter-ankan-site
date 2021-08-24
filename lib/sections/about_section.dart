import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      width: 100.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(isMobile ? 25.w : 15.w),
            child: Image.network(
              'https://pbs.twimg.com/profile_images/1052236915431206912/S0hgTvyN_400x400.jpg',
              height: isMobile ? 50.w : 30.w,
              width: isMobile ? 50.w : 30.w,
            ),
          ),
          SizedBox(height: 0.75.w),
          Text(
            'Hi, I\'m Ankan 🤝',
            style: TextStyle(
              fontSize: isMobile ? 20.sp : 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
