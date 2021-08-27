import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:js' as js;

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key? key}) : super(key: key);

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final List<Map> images = [
    {
      'image': 'assets/images/proj1.png',
      'link': 'https://github.com/ankanSikdar/flutter-shop-app',
    },
    {
      'image': 'assets/images/proj2.png',
      'link': 'https://github.com/ankanSikdar/flutter-favorite-places',
    },
    {
      'image': 'assets/images/proj3.png',
      'link': 'https://github.com/ankanSikdar/flutter-drinks-wiki',
    },
    {
      'image': 'assets/images/proj4.png',
      'link': 'https://github.com/ankanSikdar/flutter-expense-tracker',
    },
    {
      'image': 'assets/images/proj5.png',
      'link': 'https://github.com/ankanSikdar/flutter-instagram',
    },
  ];

  final List<String> places = [
    'SHOPPING APP',
    'FAVORITE PLACES',
    'DRINKS WIKI',
    'EXPENSE TRACKER',
    'INSTAGRAM CLONE',
  ];

  List<Widget> generateImageTiles(bool isMobile) {
    return images
        .map(
          (element) => InkWell(
            onTap: () {
              js.context.callMethod('open', [element['link']]);
            },
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(isMobile ? 10.0 : 20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isMobile ? 10.0 : 20.0),
                child: Image.asset(
                  element['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  final CarouselController _controller = CarouselController();
  List _isHovering = [false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    var imageSliders = generateImageTiles(isMobile);
    return Container(
      margin: EdgeInsets.only(top: isMobile ? 3.h : 2.h),
      child: Column(
        children: [
          Header(text: 'Other Projects'),
          SizedBox(
            height: isMobile ? 3.w : 2.w,
          ),
          Container(
            margin: EdgeInsets.only(
              left: isMobile ? 5.w : 10.w,
              right: isMobile ? 5.w : 10.w,
            ),
            child: Text(
              'Tap on the images below to check source code',
              style: TextStyle(
                fontSize: isMobile ? 14.sp : 10.sp,
              ),
              textAlign: TextAlign.center,
              // textAlign: TextAlign.,
            ),
          ),
          SizedBox(height: 2.w),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 7.w),
                child: CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      aspectRatio: isMobile ? 18 / 8 : 3,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                          for (int i = 0; i < imageSliders.length; i++) {
                            if (i == index) {
                              _isSelected[i] = true;
                            } else {
                              _isSelected[i] = false;
                            }
                          }
                        });
                      }),
                  carouselController: _controller,
                ),
              ),
              isMobile
                  ? Positioned(
                      bottom: 0.0,
                      child: AnimatedSmoothIndicator(
                        activeIndex: _current,
                        count: 5,
                        effect: WormEffect(
                          activeDotColor: Colors.blueGrey.shade900,
                          dotColor: Colors.blueGrey.shade200,
                        ),
                      ),
                    )
                  : Positioned(
                      bottom: 1.0,
                      child: Container(
                        width: 100.w,
                        child: Card(
                          elevation: 5.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < places.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onHover: (value) {
                                        setState(() {
                                          value
                                              ? _isHovering[i] = true
                                              : _isHovering[i] = false;
                                        });
                                      },
                                      onTap: () {
                                        _controller.animateToPage(i);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.w, bottom: 2.w),
                                        child: Text(
                                          places[i],
                                          style: TextStyle(
                                            color: _isHovering[i]
                                                ? Colors.blueGrey[900]
                                                : Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      maintainSize: true,
                                      maintainAnimation: true,
                                      maintainState: true,
                                      visible: _isSelected[i],
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 400),
                                        opacity: _isSelected[i] ? 1 : 0,
                                        child: Container(
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          width: 15.w,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
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
