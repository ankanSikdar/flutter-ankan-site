import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';

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
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BigCourseRow(
                      imageLeft: 'assets/images/course1.png',
                      imageRight: 'assets/images/course2.png',
                      titleLeft:
                          'Front-End Web UI Frameworks and Tools: Bootstrap 4',
                      titleRight: 'Front-End Web Development with React',
                      subtitleLeft: 'Coursera',
                      subtitleRight: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    BigCourseRow(
                      imageLeft: 'assets/images/course3.png',
                      imageRight: 'assets/images/course4.png',
                      titleLeft:
                          'Multiplatform Mobile App Development with React Native',
                      titleRight:
                          'Server-side Development with NodeJS, Express and MongoDB',
                      subtitleLeft: 'Coursera',
                      subtitleRight: 'Coursera',
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 70.w,
                          child: BigCourse(
                            image: 'assets/images/responsive.png',
                            title: 'Responsive Web Design',
                            subtitle: 'FreeCodeCamp',
                          ),
                        ),
                        Container(
                          width: 70.w,
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class BigCourseRow extends StatelessWidget {
  final String imageLeft;
  final String imageRight;
  final String titleLeft;
  final String titleRight;
  final String subtitleLeft;
  final String subtitleRight;

  const BigCourseRow({
    Key? key,
    required this.imageLeft,
    required this.imageRight,
    required this.titleLeft,
    required this.titleRight,
    required this.subtitleLeft,
    required this.subtitleRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 70.w,
          child: BigCourse(
            image: imageLeft,
            title: titleLeft,
            subtitle: subtitleLeft,
          ),
        ),
        Container(
          width: 70.w,
          child: BigCourse(
            image: imageRight,
            title: titleRight,
            subtitle: subtitleRight,
          ),
        ),
      ],
    );
  }
}
