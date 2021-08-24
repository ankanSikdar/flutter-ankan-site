import 'package:ankan_site/config/configs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ankan Sikdar',
      theme: lightTheme,
      // darkTheme: darkTheme,
      home: UnderDevelopment(),
    );
  }
}

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/work.png',
              height: 200,
              width: 200,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 32.0),
            Text(
              'Website Under Development',
              style: TextStyle(fontSize: 36.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
