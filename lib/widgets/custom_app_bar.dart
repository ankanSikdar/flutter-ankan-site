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
      title: Text('ankan.dev'),
      leading: isMobile ? Icon(Icons.menu) : null,
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
              TextButton(
                onPressed: () {},
                child: Text('Projects'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Education'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Contact'),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.dark_mode),
              ),
            ],
    );
  }
}
