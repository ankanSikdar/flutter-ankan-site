import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
      children: [
        Image.asset(
          image,
          height: 20.w,
          fit: BoxFit.fitHeight,
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Column(
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
          ),
        )
      ],
    );
  }
}
