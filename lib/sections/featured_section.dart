import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

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
              child: Image.asset(
                'assets/images/featured_project.png',
                width: isMobile ? 90.w : 120.w,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: isMobile ? 3.w : 5.w),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Wuphf Chat is a full fledged chatting application made with Flutter',
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
            mainAxisAlignment: isMobile
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff333333)),
                ),
                onPressed: () {},
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
                    EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff78C257)),
                ),
                onPressed: () {},
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
