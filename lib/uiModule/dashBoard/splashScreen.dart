import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpay_clone/appSize/appSize.dart';
import 'package:gpay_clone/uiModule/upiEnterPage/views/upiEnterPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.off(UpiEnterPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/gpay.jpeg"),
            SizedBox(
              height: AppDimen.screenHeight * 0.3,
            ),
            Text(
              "Google",
              style: TextStyle(
                fontSize: AppDimen.screenHeight * 0.04,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: AppDimen.screenHeight * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
