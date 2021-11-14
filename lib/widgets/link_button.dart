import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class LinkButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final void Function() onTap;

  const LinkButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.all(4.w),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: onTap,
        icon: FaIcon(
          icon,
          size: 20.sp,
        ),
        label: Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
