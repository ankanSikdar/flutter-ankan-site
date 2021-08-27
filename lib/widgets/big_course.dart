import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BigCourse extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final void Function() onTap;

  const BigCourse({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Image.asset(
            image,
            width: 20.w,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(width: 2.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: onTap,
                splashColor: Colors.transparent,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 8.sp, decoration: TextDecoration.underline),
                  overflow: TextOverflow.clip,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 7.sp),
              ),
            ],
          ),
        )
      ],
    );
  }
}
