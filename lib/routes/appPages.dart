import 'package:get/get.dart';
import 'package:gpay_clone/routes/appRoutes.dart';
import 'package:gpay_clone/uiModule/dashBoard/splashScreen.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
  ];
}
