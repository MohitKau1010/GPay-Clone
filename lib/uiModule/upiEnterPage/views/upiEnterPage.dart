import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpay_clone/appSize/appSize.dart';
import 'package:gpay_clone/uiModule/upiEnterPage/ctrl/upiEnterPage_ctrl.dart';

class UpiEnterPage extends StatelessWidget {
  UpiEnterPage({Key? key}) : super(key: key);
  final ctrl = Get.put(UpiEnterPageController());

  @override
  Widget build(BuildContext context) {
    return GetX<UpiEnterPageController>(
      builder: (ctrl) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/google.jpeg",
                    height: AppDimen.unitHeight * 50,
                    width: AppDimen.unitWidth * 50,
                  ),
                ),
                SizedBox(
                  height: AppDimen.unitHeight * 5,
                ),
                Text(
                  "Enter Google PIN",
                  style: TextStyle(fontSize: AppDimen.unitHeight * 16),
                ),
                SizedBox(
                  height: AppDimen.unitHeight * 2,
                ),
                Text(
                  "deepak.kumar@infostride.com",
                  style: TextStyle(fontSize: AppDimen.unitHeight * 10),
                ),
                SizedBox(
                  height: AppDimen.unitHeight * 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _checkBox(ctrl.firstIndex.value),
                    _checkBox(ctrl.secondIndex.value),
                    _checkBox(ctrl.thirdIndex.value),
                    _checkBox(ctrl.fourthIndex.value),
                  ],
                ),

                SizedBox(
                  height: AppDimen.unitHeight * 12,
                ),

                // ignore: unrelated_type_equality_checks
                ctrl.wrongPassword == true
                    ? Text(
                        "Incorrect PIN, Try again",
                        style: TextStyle(
                            fontSize: AppDimen.unitHeight * 12,
                            color: Colors.red),
                      )
                    : Container(),

                Expanded(child: Container()),
                Row(
                  children: [
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(1);
                          },
                          child: Center(
                              child: Text(
                            "1",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(2);
                          },
                          child: Center(
                              child: Text(
                            "2",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(3);
                          },
                          child: Center(
                              child: Text(
                            "3",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(4);
                          },
                          child: Center(
                              child: Text(
                            "4",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(5);
                          },
                          child: Center(
                              child: Text(
                            "5",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(6);
                          },
                          child: Center(
                              child: Text(
                            "6",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(7);
                          },
                          child: Center(
                              child: Text(
                            "7",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(8);
                          },
                          child: Center(
                              child: Text(
                            "8",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(9);
                          },
                          child: Center(
                              child: Text(
                            "9",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.function(0);
                          },
                          child: Center(
                              child: Text(
                            "0",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 15),
                          ))),
                    ),
                    SizedBox(
                      height: AppDimen.screenHeight * 0.08,
                      width: AppDimen.screenWidth * 0.33,
                      child: InkWell(
                          onTap: () {
                            ctrl.backSpacing();
                          },
                          child: const Center(
                              child: Icon(Icons.backspace_outlined))),
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimen.unitHeight * 10,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buttons(String value, Function() click) {
    return SizedBox(
      height: AppDimen.screenHeight * 0.08,
      width: AppDimen.screenWidth * 0.33,
      child: InkWell(
          onTap: click,
          child: Center(
              child: Text(
            value,
            style: TextStyle(fontSize: AppDimen.unitHeight * 15),
          ))),
    );
  }

  Widget _checkBox(bool value) {
    return Checkbox(
      value: value,
      onChanged: (value) {},
      shape: const CircleBorder(),
      checkColor: Colors.black,
      activeColor: Colors.black,
    );
  }
}
