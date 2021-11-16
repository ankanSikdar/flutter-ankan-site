import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_image/transparent_image.dart';

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
            child: FadeInImage(
              image: AssetImage('assets/images/ankan.jpeg'),
              placeholder: MemoryImage(kTransparentImage),
              height: isMobile ? 50.w : 30.w,
              width: isMobile ? 50.w : 30.w,
            ),
          ),
          SizedBox(height: 0.75.w),
          DefaultTextStyle(
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Theme.of(context).primaryColor,
              fontSize: isMobile ? 20.sp : 15.sp,
            ),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hi I\'m Ankan 🤝',
                  speed: Duration(milliseconds: 300),
                ),
              ],
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
                  color: Theme.of(context).primaryColor,
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
          SizedBox(height: isMobile ? 7.w : 3.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LanguageImage(asset: 'assets/images/dart.png'),
              LanguageImage(asset: 'assets/images/flutter.png'),
              LanguageImage(asset: 'assets/images/android.png'),
              LanguageImage(asset: 'assets/images/react.png'),
              LanguageImage(asset: 'assets/images/javascript.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class LanguageImage extends StatelessWidget {
  final String asset;

  const LanguageImage({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: MemoryImage(kTransparentImage),
      height: 20.w,
      width: 20.w,
      fit: BoxFit.fitWidth,
      image: AssetImage(
        asset,
      ),
    );
  }
}
