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
      width: isMobile ? 90.w : 200.w,
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
                ),
          SizedBox(height: 5.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Text(
              'Certifications',
              style: TextStyle(
                fontSize: isMobile ? 20.sp : 15.sp,
              ),
            ),
          ),
          SizedBox(height: 2.w),
          isMobile
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MobCourse(
                      image: 'assets/images/course1.png',
                      title:
                          'Front-End Web UI Frameworks and Tools: Bootstrap 4',
                      subtitle: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: 'assets/images/course2.png',
                      title: 'Front-End Web Development with React',
                      subtitle: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: 'assets/images/course3.png',
                      title:
                          'Multiplatform Mobile App Development with ReactNative',
                      subtitle: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: 'assets/images/course4.png',
                      title:
                          'Server-side Development with NodeJS, Express and MongoDB',
                      subtitle: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: 'assets/images/responsive.png',
                      title: 'Responsive Web Design',
                      subtitle: 'FreeCodeCamp',
                    ),
                  ],
                )
              : Column(),
        ],
      ),
    );
  }
}

class MobCourse extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MobCourse(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 25.w,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 13.sp),
                overflow: TextOverflow.clip,
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 12.sp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
