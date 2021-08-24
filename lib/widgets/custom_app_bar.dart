import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = SizerUtil.width <= mobileWidth;
    return SliverAppBar(
      centerTitle: isMobile ? true : false,
      title: Image.asset(
        'assets/images/logo_light.png',
        height: isMobile ? 10.h : 5.h,
        fit: BoxFit.fitHeight,
      ),
      leading: isMobile
          ? Icon(
              Icons.menu,
              color: Theme.of(context).iconTheme.color,
            )
          : null,
      actions: isMobile
          ? [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.dark_mode),
              ),
            ]
          : [
              TextButton(
                onPressed: () {},
                child: Text('About'),
              ),
              SizedBox(width: 16.0),
              TextButton(
                onPressed: () {},
                child: Text('Projects'),
              ),
              SizedBox(width: 16.0),
              TextButton(
                onPressed: () {},
                child: Text('Education'),
              ),
              SizedBox(width: 16.0),
              TextButton(
                onPressed: () {},
                child: Text('Contact'),
              ),
              SizedBox(width: 16.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.dark_mode),
              ),
            ],
    );
  }
}
