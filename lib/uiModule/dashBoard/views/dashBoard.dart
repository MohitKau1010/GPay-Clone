import 'package:flutter/material.dart';
import 'package:gpay_clone/appSize/appSize.dart';
import 'package:gpay_clone/uiModule/dashBoard/views/scrollableContainer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// ignore: must_be_immutable
class DashBordPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  DashBordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[100],
        body: SlidingUpPanel(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            maxHeight: AppDimen.screenHeight,
            minHeight: AppDimen.screenHeight * 0.65,
            //  parallaxEnabled: true,
            parallaxOffset: .5,
            panelBuilder: (controller) =>
                ScrollableContainer(controller: controller),
            body: SafeArea(
                child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  height: AppDimen.screenHeight * 0.06,
                  width: AppDimen.screenWidth * 0.8,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: AppDimen.unitWidth * 10),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: AppDimen.unitWidth * 10),
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Pay by name or phone number",
                                hintStyle: TextStyle(
                                    fontSize: AppDimen.unitHeight * 10,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: AppDimen.unitHeight * 40,
                  width: AppDimen.unitWidth * 40,
                  decoration: const BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "D",
                    style: TextStyle(
                        fontSize: AppDimen.unitHeight * 16,
                        color: Colors.white),
                  )),
                ),
              ]),
              Image.asset("assets/images/homeImage.jpeg"),
            ]))));
  }
}
