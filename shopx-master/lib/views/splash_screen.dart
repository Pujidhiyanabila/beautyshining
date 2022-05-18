import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopx/common/style.dart';
import 'package:shopx/widgets/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  // static const routeName = '/splash_screen';

  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorStyles.secondaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 140,
              height: 140,
            ),
            Text(
              'Beauty Shining',
              // style: GoogleFonts.smooch(
              //   fontSize: 34,
              //   color: ColorStyles.primaryColor,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}