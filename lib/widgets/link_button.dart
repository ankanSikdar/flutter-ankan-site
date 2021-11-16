import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class LinkButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final void Function() onTap;
  final bool isMobile;

  const LinkButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.onTap,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          isMobile
              ? EdgeInsets.all(4.w)
              : EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.w),
        ),
        minimumSize: isMobile
            ? MaterialStateProperty.all(Size(40.w, 1.w))
            : MaterialStateProperty.all(Size(35.w, 2.w)),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: onTap,
      icon: FaIcon(
        icon,
        size: isMobile ? 20.sp : 15.sp,
      ),
      label: Text(
        title,
        style: TextStyle(
          fontSize: isMobile ? 14.sp : 8.sp,
        ),
      ),
    );
  }
}
