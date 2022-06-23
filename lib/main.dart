import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gpay_clone/routes/appPages.dart';
import 'package:gpay_clone/routes/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,

      getPages: AppPages.pages,

      initialRoute: AppRoutes.splashScreen,
      debugShowCheckedModeBanner: false,

      // defaultTransition: Transition.cupertino,
    );
  }
}
