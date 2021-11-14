import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class PCLinkButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final void Function() onTap;

  const PCLinkButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.w),
        ),
        minimumSize: MaterialStateProperty.all(Size(35.w, 2.w)),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: onTap,
      icon: FaIcon(
        icon,
        size: 15.sp,
      ),
      label: Text(
        title,
        style: TextStyle(
          fontSize: 8.sp,
        ),
      ),
    );
  }
}
