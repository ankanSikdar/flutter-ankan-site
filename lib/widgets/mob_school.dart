import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
          textAlign: TextAlign.center,
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 12.sp),
          textAlign: TextAlign.center,
        ),
        Text(
          graduated,
          style: TextStyle(fontSize: 12.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
