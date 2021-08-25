import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const String schoolTitle = 'SUDHIR MEMORIAL INSTITUTE';
const String schoolSubtitle = 'CBSE, 10 & 10+2';
const String schoolGraduated = 'Graduated in 2017';

const String collegeTitle = 'HERITAGE INSTITUTE OF TECHNOLOGY';
const String collegeSubtitle = 'MAKAUT, BTech in Information Technology';
const String collegeGraduated = 'Graduated in 2021';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Width: ${SizerUtil.width}');
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      child: Column(
        children: [
          Header(text: 'Education & Courses'),
          SizedBox(
            height: 5.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Text(
              'School & College',
              style: TextStyle(
                fontSize: isMobile ? 20.sp : 15.sp,
              ),
            ),
          ),
          SizedBox(height: 2.w),
          isMobile
              ? Column(
                  children: [
                    MobSchool(
                      image: 'assets/images/school.png',
                      title: schoolTitle,
                      subtitle: schoolSubtitle,
                      graduated: schoolGraduated,
                    ),
                    SizedBox(height: 2.w),
                    MobSchool(
                      image: 'assets/images/college.png',
                      title: collegeTitle,
                      subtitle: collegeSubtitle,
                      graduated: collegeGraduated,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BigSchool(
                      image: 'assets/images/school.png',
                      title: schoolTitle,
                      subtitle: schoolSubtitle,
                      graduated: schoolGraduated,
                    ),
                    SizedBox(height: 2.w),
                    BigSchool(
                      image: 'assets/images/college.png',
                      title: collegeTitle,
                      subtitle: collegeSubtitle,
                      graduated: collegeGraduated,
                    ),
                  ],
                )
        ],
      ),
    );
  }
}

class MobSchool extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String graduated;

  const MobSchool({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.graduated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          width: 25.w,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 1.w),
        Text(
          title,
          style: TextStyle(fontSize: 15.sp),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12.sp),
        ),
        Text(
          graduated,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}

class BigSchool extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String graduated;

  const BigSchool({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.graduated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          width: 10.h,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.w),
            Text(
              title,
              style: TextStyle(fontSize: 10.sp),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 8.sp),
            ),
            Text(
              graduated,
              style: TextStyle(fontSize: 8.sp),
            ),
          ],
        )
      ],
    );
  }
}
