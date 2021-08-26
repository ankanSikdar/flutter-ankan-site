import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      width: isMobile ? 90.w : 200.w,
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      child: Column(
        children: [
          Header(text: 'Connect With Me'),
          SizedBox(
            height: 5.w,
          ),
          Text(
            'Feel free to contact me if you have any queries or issues',
            style: TextStyle(fontSize: isMobile ? 14.sp : 10.sp),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2.w),
          isMobile
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LinkButton(
                          icon: FontAwesomeIcons.linkedin,
                          color: Color(0XFF0077b5),
                          title: 'LinkedIn',
                          fontSize: 14.sp,
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.github,
                          color: Color(0xff333333),
                          title: 'GitHub',
                          fontSize: 14.sp,
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LinkButton(
                          icon: FontAwesomeIcons.instagram,
                          color: Color(0XFF833ab4),
                          title: 'Instagram',
                          fontSize: 14.sp,
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.twitter,
                          color: Color(0xff1da1f2),
                          title: 'Twitter',
                          fontSize: 14.sp,
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LinkButton(
                          icon: FontAwesomeIcons.facebook,
                          color: Color(0XFF4267B2),
                          title: 'Facebook',
                          fontSize: 14.sp,
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.solidEnvelope,
                          color: Color(0xffdd4b39),
                          title: 'Email',
                          fontSize: 14.sp,
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
                )
              : Row(),
        ],
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final double fontSize;
  final void Function() onTap;

  const LinkButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.fontSize,
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
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: onTap,
        icon: FaIcon(
          icon,
          size: 20.sp,
        ),
        label: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
