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
    'SHOPPING APP',
    'FAVORITE PLACES',
    'DRINKS WIKI',
    'EXPENSE TRACKER',
    'INSTAGRAM CLONE',
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
  List _isHovering = [false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false];
  int _current = 0;

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
          if (!isMobile)
            Container(
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
                              padding: EdgeInsets.only(top: 2.w, bottom: 2.w),
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
        ],
      ),
    );
  }
}
