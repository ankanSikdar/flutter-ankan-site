import 'package:ankan_site/config/configs.dart';
import 'package:ankan_site/controllers/theme_controller.dart';
import 'package:ankan_site/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:js' as js;
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key? key}) : super(key: key);

  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final List<Map> images = [
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Fproj1.png?alt=media&token=22061bd7-24b9-4551-b4c2-f636956ae593',
      'link': 'https://github.com/ankanSikdar/flutter-shop-app',
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Fproj2.png?alt=media&token=29e02b48-2a14-40fe-8039-08f25dc4843e',
      'link': 'https://github.com/ankanSikdar/flutter-favorite-places',
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Fproj3.png?alt=media&token=cd570116-fd60-4abf-a781-bb5840830a33',
      'link': 'https://github.com/ankanSikdar/flutter-drinks-wiki',
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Fproj4.png?alt=media&token=c48b8e3c-e42d-4011-a349-8aa1fd7d553c',
      'link': 'https://github.com/ankanSikdar/flutter-expense-tracker',
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/ankan-dev-flutter.appspot.com/o/projects%2Fproj5.png?alt=media&token=57f975be-7759-4dc9-970c-7307e68d038e',
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
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    element['image'],
                  ),
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
                      child: GetBuilder<ThemeController>(
                        builder: (controller) => AnimatedSmoothIndicator(
                          activeIndex: _current,
                          count: 5,
                          effect: controller.themeMode == ThemeMode.light
                              ? WormEffect(
                                  activeDotColor: Colors.blueGrey.shade900,
                                  dotColor: Colors.blueGrey.shade200,
                                )
                              : WormEffect(
                                  activeDotColor: Colors.blueGrey.shade200,
                                  dotColor: Colors.blueGrey.shade900),
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
                                        child: GetBuilder<ThemeController>(
                                          builder: (controller) => Text(
                                            places[i],
                                            style: controller.themeMode ==
                                                    ThemeMode.light
                                                ? TextStyle(
                                                    color: _isHovering[i]
                                                        ? Colors.blueGrey[900]
                                                        : Colors.blueGrey,
                                                  )
                                                : TextStyle(
                                                    color: _isHovering[i]
                                                        ? Colors.white
                                                        : Colors
                                                            .blueGrey.shade200,
                                                  ),
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
                                        child: GetBuilder<ThemeController>(
                                          builder: (controller) => Container(
                                            height: 5,
                                            decoration: BoxDecoration(
                                              color: controller.themeMode ==
                                                      ThemeMode.light
                                                  ? Colors.blueGrey
                                                  : Colors.blueGrey.shade200,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            width: 15.w,
                                          ),
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
