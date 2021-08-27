import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/sections/sections.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void handleMenuTap() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!..openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Scaffold(
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                AboutSection(),
                SizedBox(
                  height: isMobile ? 20.w : 0,
                ),
                FeaturedSection(),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                ProjectsSection(),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                EducationSection(),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                ContactSection(),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                FooterSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
