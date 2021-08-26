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
      drawer: isMobile ? Drawer() : null,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(
            onMenuTap: handleMenuTap,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                AboutSection(),
                SizedBox(
                  height: isMobile ? 20.w : 0,
                ),
                FeaturedSection(),
                ProjectsSection(),
                SizedBox(
                  height: 20.w,
                ),
                EducationSection(),
                SizedBox(
                  height: 20.w,
                ),
                ContactSection(),
                SizedBox(
                  height: 20.w,
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
