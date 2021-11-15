import 'package:ankan_site/widgets/course.dart';
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
const String certImage1 =
    'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/education%2Fcourse1.png?alt=media&token=9af74a28-474b-4802-845e-73b595a11bef';
const String certLink1 =
    'https://www.coursera.org/account/accomplishments/certificate/D3ZU4TKQYWSH';

const String certTitle2 = 'Front-End Web Development with React';
const String certSubtitle2 = 'Coursera';
const String certImage2 =
    'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/education%2Fcourse2.png?alt=media&token=5b6cfb5a-ec6e-491c-9647-56948285b319';
const String certLink2 =
    'https://www.coursera.org/account/accomplishments/certificate/7HDVGEPHEDKK';

const String certTitle3 =
    'Multiplatform Mobile App Development with React Native';
const String certSubtitle3 = 'Coursera';
const String certImage3 =
    'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/education%2Fcourse3.png?alt=media&token=41cef305-940d-4db4-8e5e-3e89a5d0557b';
const String certLink3 =
    'https://www.coursera.org/account/accomplishments/certificate/3RV2QZBVHHMC';

const String certTitle4 =
    'Server-side Development with NodeJS, Express and MongoDB';
const String certSubtitle4 = 'Coursera';
const String certImage4 =
    'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/education%2Fcourse4.png?alt=media&token=2bc9ba26-dfcf-4aaa-843a-f4eddcf879be';
const String certLink4 =
    'https://www.coursera.org/account/accomplishments/certificate/C7XLU7PHE59G';

const String certTitle5 = 'Responsive Web Design';
const String certSubtitle5 = 'FreeCodeCamp';
const String certImage5 =
    'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/education%2Fresponsive.png?alt=media&token=0d13300b-a1e2-4189-8263-c85cb373ec59';
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
          CoursesSection(isMobile: isMobile),
        ],
      ),
    );
  }
}

class CoursesSection extends StatelessWidget {
  final bool isMobile;
  void handleTap(String url) {
    js.context.callMethod('open', [url]);
  }

  const CoursesSection({Key? key, required this.isMobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: isMobile ? 0.w : 2.w,
      alignment: WrapAlignment.spaceBetween,
      runSpacing: 5.w,
      children: [
        CourseWidget(
          isMobile: isMobile,
          image: certImage1,
          title: certTitle1,
          subtitle: certSubtitle1,
          onTap: () {
            handleTap(certLink1);
          },
        ),
        CourseWidget(
          isMobile: isMobile,
          image: certImage2,
          title: certTitle2,
          subtitle: certSubtitle2,
          onTap: () {
            handleTap(certLink2);
          },
        ),
        CourseWidget(
          isMobile: isMobile,
          image: certImage3,
          title: certTitle3,
          subtitle: certSubtitle3,
          onTap: () {
            handleTap(certLink3);
          },
        ),
        CourseWidget(
          isMobile: isMobile,
          image: certImage4,
          title: certTitle4,
          subtitle: certSubtitle4,
          onTap: () {
            handleTap(certLink4);
          },
        ),
        CourseWidget(
          isMobile: isMobile,
          image: certImage5,
          title: certTitle5,
          subtitle: certSubtitle5,
          onTap: () {
            handleTap(certLink5);
          },
        ),
      ],
    );
  }
}
