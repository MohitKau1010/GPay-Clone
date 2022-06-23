import 'package:get/get.dart';

import '../../dashBoard/views/dashBoard.dart';

class UpiEnterPageController extends GetxController {
  var firstIndex = false.obs;
  var secondIndex = false.obs;
  var thirdIndex = false.obs;
  var fourthIndex = false.obs;
  List originalPassword = [1, 2, 3, 4];
  final inputPassword = List<dynamic>.filled(4, 1, growable: false);
  var wrongPassword = false.obs;

  // ignore: deprecated_member_use

  ///Password input
  function(int value) {
    if (firstIndex.value == false) {
      firstIndex.value = true;
      inputPassword[0] = value;
      wrongPassword.value = false;
    } else if (firstIndex.value == true && secondIndex.value == false) {
      secondIndex.value = true;
      inputPassword[1] = value;
    } else if (firstIndex.value == true &&
        secondIndex.value == true &&
        thirdIndex.value == false) {
      thirdIndex.value = true;
      inputPassword[2] = value;
    } else {
      fourthIndex.value = true;
      inputPassword[3] = value;
      print(">>>>>$inputPassword");
      print("<<<<<<<$originalPassword");
      update();

      if ("$inputPassword" == "$originalPassword") {
        Get.off(DashBordPage());
      } else {
        wrongPassword.value = true;
        firstIndex.value = false;
        secondIndex.value = false;
        thirdIndex.value = false;
        fourthIndex.value = false;
      }
    }
  }

  ///Back Spacing
  backSpacing() {
    if (fourthIndex.value == true) {
      fourthIndex.value = false;
    } else if (fourthIndex.value == false && thirdIndex.value == true) {
      thirdIndex.value = false;
    } else if (fourthIndex.value == false &&
        thirdIndex.value == false &&
        secondIndex.value == true) {
      secondIndex.value = false;
    } else {
      firstIndex.value = false;
    }
  }
}
