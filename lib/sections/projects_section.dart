import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key? key}) : super(key: key);

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final List<String> images = [
    'assets/images/proj1.png',
    'assets/images/proj2.png',
    'assets/images/proj3.png',
    'assets/images/proj4.png',
    'assets/images/proj5.png',
  ];

  final List<String> places = [
    'SHOP APP',
    'FAV PLACES',
    'DRINKS WIKI',
    'EXPENSES APP',
    'INSTA CLONE',
  ];

  List<Widget> generateImageTiles(bool isMobile) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(isMobile ? 10.0 : 20.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    var imageSliders = generateImageTiles(isMobile);
    return Container(
      // width: isMobile ? 90.w : 150.w,
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      child: Column(
        children: [
          Header(text: 'Other Projects'),
          SizedBox(
            height: 5.w,
          ),
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: isMobile ? 18 / 8 : 3,
                autoPlay: true,
                onPageChanged: (index, reason) {}),
            carouselController: _controller,
          ),
        ],
      ),
    );
  }
}
