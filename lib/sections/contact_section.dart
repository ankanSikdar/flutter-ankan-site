import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'dart:js' as js;
import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  void handleTap(String url) {
    js.context.callMethod('open', [url]);
  }

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
                          onTap: () {
                            handleTap(
                                'https://www.linkedin.com/in/ankansikdar/');
                          },
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.github,
                          color: Color(0xff333333),
                          title: 'GitHub',
                          onTap: () {
                            handleTap('https://github.com/ankanSikdar');
                          },
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
                          onTap: () {
                            handleTap(
                                'https://www.instagram.com/ankan_sikdar/');
                          },
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.twitter,
                          color: Color(0xff1da1f2),
                          title: 'Twitter',
                          onTap: () {
                            handleTap('https://twitter.com/ankan_sikdar');
                          },
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
                          onTap: () {
                            handleTap('https://www.facebook.com/ankanSikdar/');
                          },
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.solidEnvelope,
                          color: Color(0xffdd4b39),
                          title: 'Email',
                          onTap: () {
                            handleTap('mailto:contact@ankan.dev');
                          },
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
                          onTap: () {
                            handleTap('https://www.reddit.com/user/Chrome597');
                          },
                        ),
                        SizedBox(width: 4.w),
                        LinkButton(
                          icon: FontAwesomeIcons.googlePlay,
                          color: Color(0xff78C257),
                          title: 'Play Store',
                          onTap: () {
                            handleTap(
                                'https://play.google.com/store/apps/dev?id=6059531150910740578');
                          },
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
                            onTap: () {
                              handleTap(
                                  'https://www.linkedin.com/in/ankansikdar/');
                            }),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                            icon: FontAwesomeIcons.github,
                            color: Color(0xff333333),
                            title: 'GitHub',
                            onTap: () {
                              handleTap('https://github.com/ankanSikdar');
                            }),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.twitter,
                          color: Color(0xff1da1f2),
                          title: 'Twitter',
                          onTap: () {
                            handleTap('https://twitter.com/ankan_sikdar');
                          },
                        ),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.instagram,
                          color: Color(0XFF833ab4),
                          title: 'Instagram',
                          onTap: () {
                            handleTap(
                                'https://www.instagram.com/ankan_sikdar/');
                          },
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
                            onTap: () {
                              handleTap(
                                  'https://www.facebook.com/ankanSikdar/');
                            }),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                            icon: FontAwesomeIcons.solidEnvelope,
                            color: Color(0xffdd4b39),
                            title: 'Email',
                            onTap: () {
                              handleTap('mailto:contact@ankan.dev');
                            }),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.reddit,
                          color: Color(0xffff4500),
                          title: 'Reddit',
                          onTap: () {
                            handleTap('https://www.reddit.com/user/Chrome597');
                          },
                        ),
                        SizedBox(width: 2.w),
                        PCLinkButton(
                          icon: FontAwesomeIcons.googlePlay,
                          color: Color(0xff78C257),
                          title: 'Play Store',
                          onTap: () {
                            handleTap(
                                'https://play.google.com/store/apps/dev?id=6059531150910740578');
                          },
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
