import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_image/transparent_image.dart';

class CourseWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final void Function() onTap;
  final bool isMobile;

  const CourseWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            width: isMobile ? 25.w : 20.w,
            fit: BoxFit.fitWidth,
            image: NetworkImage(
              image,
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          width: isMobile ? 60.w : 50.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: onTap,
                splashColor: Colors.transparent,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: isMobile ? 13.sp : 8.sp,
                    decoration: TextDecoration.underline,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: isMobile ? 12.sp : 7.sp),
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        )
      ],
    );
  }
}
