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
      margin: EdgeInsets.only(
        top: isMobile ? 3.h : 2.h,
        left: isMobile ? 5.w : 10.w,
        right: isMobile ? 5.w : 10.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(height: 3.w),
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
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.github,
                          color: Color(0xff333333),
                          title: 'GitHub',
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
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.twitter,
                          color: Color(0xff1da1f2),
                          title: 'Twitter',
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
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.solidEnvelope,
                          color: Color(0xffdd4b39),
                          title: 'Email',
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LinkButton(
                          icon: FontAwesomeIcons.reddit,
                          color: Color(0xffff4500),
                          title: 'Reddit',
                          onTap: () {},
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.googlePlay,
                          color: Color(0xff78C257),
                          title: 'Play Store',
                          onTap: () {},
                        )
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PCLinkButton(
                            icon: FontAwesomeIcons.linkedin,
                            color: Color(0XFF0077b5),
                            title: 'LinkedIn',
                            onTap: () {}),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                            icon: FontAwesomeIcons.github,
                            color: Color(0xff333333),
                            title: 'GitHub',
                            onTap: () {}),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.twitter,
                          color: Color(0xff1da1f2),
                          title: 'Twitter',
                          onTap: () {},
                        ),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.instagram,
                          color: Color(0XFF833ab4),
                          title: 'Instagram',
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 2.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PCLinkButton(
                            icon: FontAwesomeIcons.facebook,
                            color: Color(0XFF4267B2),
                            title: 'Facebook',
                            onTap: () {}),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                            icon: FontAwesomeIcons.solidEnvelope,
                            color: Color(0xffdd4b39),
                            title: 'Email',
                            onTap: () {}),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.reddit,
                          color: Color(0xffff4500),
                          title: 'Reddit',
                          onTap: () {},
                        ),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.googlePlay,
                          color: Color(0xff78C257),
                          title: 'Play Store',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

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
