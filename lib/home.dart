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
  final _aboutKey = GlobalKey();
  final _featuredKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _educationKey = GlobalKey();
  final _contactKey = GlobalKey();

  void handleMenuTap() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!..openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void handleSectionTap(String name) {
    final duration = Duration(seconds: 1);
    switch (name) {
      case 'About':
        {
          Scrollable.ensureVisible(_aboutKey.currentContext!,
              duration: duration);
        }
        break;
      case 'Featured':
        {
          Scrollable.ensureVisible(_featuredKey.currentContext!,
              duration: duration);
        }
        break;
      case 'Projects':
        {
          Scrollable.ensureVisible(_projectsKey.currentContext!,
              duration: duration);
        }
        break;
      case 'Education':
        {
          Scrollable.ensureVisible(_educationKey.currentContext!,
              duration: duration);
        }
        break;

      case 'Contact':
        {
          Scrollable.ensureVisible(_contactKey.currentContext!,
              duration: duration);
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return Scaffold(
      drawer: isMobile ? Drawer() : null,
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: [
          CustomAppBar(
            onSectionTap: handleSectionTap,
            onMenuTap: handleMenuTap,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                AboutSection(key: _aboutKey),
                SizedBox(
                  height: isMobile ? 20.w : 0,
                ),
                FeaturedSection(key: _featuredKey),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                ProjectsSection(key: _projectsKey),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                EducationSection(key: _educationKey),
                SizedBox(
                  height: isMobile ? 20.w : 5.w,
                ),
                ContactSection(key: _contactKey),
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
