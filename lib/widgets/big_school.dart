import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_image/transparent_image.dart';

class BigSchool extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String graduated;
  final void Function() onTap;

  const BigSchool({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.graduated,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          height: 20.w,
          fit: BoxFit.fitHeight,
          image: AssetImage(
            image,
          ),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.w),
              InkWell(
                onTap: onTap,
                splashColor: Colors.transparent,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 10.sp, decoration: TextDecoration.underline),
                ),
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
