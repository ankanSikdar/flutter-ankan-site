import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:js' as js;

import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';

const String schoolTitle = 'SUDHIR MEMORIAL INSTITUTE';
const String schoolSubtitle = 'CBSE, 10 & 10+2';
const String schoolGraduated = 'Graduated in 2017';

const String collegeTitle = 'HERITAGE INSTITUTE OF TECHNOLOGY';
const String collegeSubtitle = 'MAKAUT, BTech in Information Technology';
const String collegeGraduated = 'Graduated in 2021';

const String certTitle1 = 'Front-End Web UI Frameworks and Tools: Bootstrap 4';
const String certSubtitle1 = 'Coursera';
const String certImage1 = 'assets/images/course1.png';
const String certLink1 =
    'https://www.coursera.org/account/accomplishments/certificate/D3ZU4TKQYWSH';

const String certTitle2 = 'Front-End Web Development with React';
const String certSubtitle2 = 'Coursera';
const String certImage2 = 'assets/images/course2.png';
const String certLink2 =
    'https://www.coursera.org/account/accomplishments/certificate/7HDVGEPHEDKK';

const String certTitle3 =
    'Multiplatform Mobile App Development with React Native';
const String certSubtitle3 = 'Coursera';
const String certImage3 = 'assets/images/course3.png';
const String certLink3 =
    'https://www.coursera.org/account/accomplishments/certificate/3RV2QZBVHHMC';

const String certTitle4 =
    'Server-side Development with NodeJS, Express and MongoDB';
const String certSubtitle4 = 'Coursera';
const String certImage4 = 'assets/images/course4.png';
const String certLink4 =
    'https://www.coursera.org/account/accomplishments/certificate/C7XLU7PHE59G';

const String certTitle5 = 'Responsive Web Design';
const String certSubtitle5 = 'FreeCodeCamp';
const String certImage5 = 'assets/images/responsive.png';
const String certLink5 =
    'https://www.freecodecamp.org/certification/ankansikdar/responsive-web-design';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  void handleTap(String url) {
    js.context.callMethod('open', [url]);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(
        top: isMobile ? 3.h : 2.h,
        left: isMobile ? 5.w : 10.w,
        right: isMobile ? 5.w : 10.w,
      ),
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
                      onTap: () {
                        handleTap('http://www.sudhirmemorialinstitute.com/');
                      },
                    ),
                    SizedBox(height: 2.w),
                    MobSchool(
                      image: 'assets/images/college.png',
                      title: collegeTitle,
                      subtitle: collegeSubtitle,
                      graduated: collegeGraduated,
                      onTap: () {
                        handleTap('https://heritageit.edu/');
                      },
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: BigSchool(
                        image: 'assets/images/school.png',
                        title: schoolTitle,
                        subtitle: schoolSubtitle,
                        graduated: schoolGraduated,
                        onTap: () {
                          handleTap('http://www.sudhirmemorialinstitute.com/');
                        },
                      ),
                    ),
                    SizedBox(height: 2.w),
                    Expanded(
                      child: BigSchool(
                        image: 'assets/images/college.png',
                        title: collegeTitle,
                        subtitle: collegeSubtitle,
                        graduated: collegeGraduated,
                        onTap: () {
                          handleTap('https://heritageit.edu/');
                        },
                      ),
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
                      image: certImage1,
                      title: certTitle1,
                      subtitle: certSubtitle1,
                      onTap: () {
                        handleTap(certLink1);
                      },
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: certImage2,
                      title: certTitle2,
                      subtitle: certSubtitle2,
                      onTap: () {
                        handleTap(certLink2);
                      },
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: certImage3,
                      title: certTitle3,
                      subtitle: certSubtitle3,
                      onTap: () {
                        handleTap(certLink3);
                      },
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: certImage4,
                      title: certTitle4,
                      subtitle: certSubtitle4,
                      onTap: () {
                        handleTap(certLink4);
                      },
                    ),
                    SizedBox(height: 2.w),
                    MobCourse(
                      image: certImage5,
                      title: certTitle5,
                      subtitle: certSubtitle5,
                      onTap: () {
                        handleTap(certLink5);
                      },
                    ),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BigCourseRow(
                      imageLeft: certImage1,
                      imageRight: certImage2,
                      titleLeft: certTitle1,
                      titleRight: certTitle2,
                      subtitleLeft: certSubtitle1,
                      subtitleRight: certSubtitle2,
                      onTapLeft: () {
                        handleTap(certLink1);
                      },
                      onTapRight: () {
                        handleTap(certLink2);
                      },
                    ),
                    SizedBox(height: 2.w),
                    BigCourseRow(
                      imageLeft: certImage3,
                      imageRight: certImage4,
                      titleLeft: certTitle3,
                      titleRight: certTitle4,
                      subtitleLeft: certSubtitle3,
                      subtitleRight: certSubtitle4,
                      onTapLeft: () {
                        handleTap(certLink3);
                      },
                      onTapRight: () {
                        handleTap(certLink4);
                      },
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: BigCourse(
                            image: certImage5,
                            title: certTitle5,
                            subtitle: certSubtitle5,
                            onTap: () {
                              handleTap(certLink5);
                            },
                          ),
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
  final void Function() onTapLeft;
  final void Function() onTapRight;

  const BigCourseRow({
    Key? key,
    required this.imageLeft,
    required this.imageRight,
    required this.titleLeft,
    required this.titleRight,
    required this.subtitleLeft,
    required this.subtitleRight,
    required this.onTapLeft,
    required this.onTapRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: BigCourse(
            image: imageLeft,
            title: titleLeft,
            subtitle: subtitleLeft,
            onTap: onTapLeft,
          ),
        ),
        Expanded(
          child: BigCourse(
            image: imageRight,
            title: titleRight,
            subtitle: subtitleRight,
            onTap: onTapRight,
          ),
        ),
      ],
    );
  }
}
