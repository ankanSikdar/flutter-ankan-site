import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'dart:js' as js;

import 'package:transparent_image/transparent_image.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Container(
      margin: EdgeInsets.only(
        left: isMobile ? 5.w : 10.w,
        right: isMobile ? 5.w : 10.w,
      ),
      child: Column(
        children: [
          Header(text: 'Featured Project'),
          SizedBox(
            height: isMobile ? 5.w : 3.w,
          ),
          Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isMobile ? 10.0 : 20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isMobile ? 10.0 : 20.0),
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                width: isMobile ? 90.w : 120.w,
                height: isMobile ? 49.w : 67.w,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Ffeatured_project.png?alt=media&token=0cfbb7f9-b081-446b-b4e1-863f1bbceae9',
                ),
              ),
            ),
          ),
          SizedBox(height: isMobile ? 3.w : 5.w),
          Row(
            children: [
              Expanded(
                child: RichText(
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: isMobile ? 14.sp : 10.sp,
                      fontFamily: 'OpenSans',
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Wuphf Chat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' is a full fledged chatting application made with Flutter')
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: UnorderedList([
              'Open Source',
              '1 to 1 Chat',
              'Group Chat',
              'Get Notifications for New Chat and New Groups',
              'Robust User Presence',
              'Send Emojis and Images',
              'No need to refresh. Everything is updated realtime.',
            ]),
          ),
          SizedBox(height: 2.5.w),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Technologies Used',
                  style: TextStyle(
                    fontSize: isMobile ? 14.sp : 10.sp,
                  ),
                  textAlign: isMobile ? TextAlign.center : TextAlign.start,
                  // textAlign: TextAlign.,
                ),
              ),
            ],
          ),
          SizedBox(height: 2.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: UnorderedList([
              'Main Database: Firebase Firestore',
              'User Presence Database: Firebase Realtime Database',
              'Notifications: Firebase Cloud Messaging & Cloud Functions',
              'State Management: BLOC',
              'Observing Streams: RxDart',
            ]),
          ),
          SizedBox(height: 2.w),
          Text(
            'For more information click the GitHub or Play Store links below.',
            style: TextStyle(
              fontSize: isMobile ? 14.sp : 10.sp,
            ),
            textAlign: TextAlign.center,
            // textAlign: TextAlign.,
          ),
          SizedBox(height: isMobile ? 4.w : 2.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        horizontal: isMobile ? 4.w : 8.w, vertical: 4.w),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff333333)),
                ),
                onPressed: () {
                  js.context.callMethod('open',
                      ['https://github.com/ankanSikdar/flutter-wuphf-chat']);
                },
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  size: isMobile ? 20.sp : 18.sp,
                ),
                label: Text(
                  'GitHub',
                  style: TextStyle(
                    fontSize: isMobile ? 14.sp : 8.sp,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                        horizontal: isMobile ? 4.w : 8.w, vertical: 4.w),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff78C257)),
                ),
                onPressed: () {
                  js.context.callMethod('open', [
                    'https://play.google.com/store/apps/details?id=dev.ankan.wuphf_chat'
                  ]);
                },
                icon: FaIcon(
                  FontAwesomeIcons.googlePlay,
                  size: isMobile ? 20.sp : 18.sp,
                ),
                label: Text(
                  'Play Store',
                  style: TextStyle(
                    fontSize: isMobile ? 14.sp : 8.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
