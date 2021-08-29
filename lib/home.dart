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
      drawer: isMobile ? MobileDrawer() : null,
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
                  height: isMobile ? 20.w : 7.w,
                ),
                FeaturedSection(key: _featuredKey),
                SizedBox(
                  height: isMobile ? 20.w : 7.w,
                ),
                ProjectsSection(key: _projectsKey),
                SizedBox(
                  height: isMobile ? 20.w : 7.w,
                ),
                EducationSection(key: _educationKey),
                SizedBox(
                  height: isMobile ? 20.w : 7.w,
                ),
                ContactSection(key: _contactKey),
                SizedBox(
                  height: isMobile ? 20.w : 7.w,
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

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
            ),
            child: Container(
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Text(
                'contact@ankan.dev',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.w),
          DrawerButton(title: 'About'),
          DrawerButton(title: 'Featured'),
          DrawerButton(title: 'Projects'),
          DrawerButton(title: 'Education'),
          DrawerButton(title: 'Contact'),
        ],
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  final String title;
  const DrawerButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.w),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}
