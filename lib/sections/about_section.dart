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
          SizedBox(height: 0.5.h),
          Text(
            'Learning and Building Flutter Apps.',
            style: TextStyle(
              fontSize: isMobile ? 25.sp : 20.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 0.75.h),
          Container(
            width: isMobile ? 90.w : 70.w,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: isMobile ? 14.sp : 10.sp,
                  fontFamily: 'OpenSans',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'an '),
                  TextSpan(
                      text: 'App Developer',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          ' from Kolkata, WB, India. I specialize in building '),
                  TextSpan(
                      text: 'Flutter',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Apps.')
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: isMobile ? 6.w : 1.5.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/dart.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/flutter.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/android.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/react.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/javascript.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
