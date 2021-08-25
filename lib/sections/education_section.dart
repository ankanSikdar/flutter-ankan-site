import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      child: Column(
        children: [
          Header(text: 'Education & Courses'),
          SizedBox(
            height: 5.w,
          ),
        ],
      ),
    );
  }
}
