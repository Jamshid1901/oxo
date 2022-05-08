import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oxo/presentation/styles/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.black,
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          width: 150.w,
          height: 68.h,
        ),
      ),
    );
  }
}
