import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MobSchool extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String graduated;
  final void Function() onTap;

  const MobSchool({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.graduated,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          height: 20.w,
          fit: BoxFit.fitHeight,
        ),
        SizedBox(height: 1.w),
        InkWell(
          onTap: onTap,
          splashColor: Colors.transparent,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 15.sp, decoration: TextDecoration.underline),
            textAlign: TextAlign.center,
          ),
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
