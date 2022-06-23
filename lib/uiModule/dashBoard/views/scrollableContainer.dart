import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../appSize/appSize.dart';
import '../../qrCodeScanner/qrCodeScanner.dart';

class ScrollableContainer extends StatelessWidget {
  ScrollableContainer({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;

  final titleList = [
    "Bills",
    "Recharge",
    "DTH/Cable",
    "Google Play Store",
    "Electricity"
  ];

  final iconList = [
    const Icon(Icons.mobile_friendly_sharp),
    const Icon(Icons.mobile_screen_share_rounded),
    const Icon(Icons.mobile_screen_share_rounded),
    const Icon(Icons.mobile_friendly_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      controller: controller,
      padding: EdgeInsets.zero,
      children: [
        _dashBord(),
        SizedBox(
          height: AppDimen.unitHeight * 20,
        ),
        otherServices(),
        promotion(),
        SizedBox(
          height: AppDimen.unitHeight * 30,
        ),
        historyAndBalance(),
        SizedBox(
          height: AppDimen.unitHeight * 30,
        ),
        inviteImage()
      ],
    );
  }

  Widget _dashBord() => Container(
        // height: AppDimen.screenHeight,
        width: AppDimen.screenWidth,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Divider

            Padding(
              padding: EdgeInsets.only(
                  top: AppDimen.unitHeight * 8,
                  left: AppDimen.screenWidth * 0.48),
              child: Container(
                height: AppDimen.unitHeight * 1.5,
                width: AppDimen.unitWidth * 30,
                color: Colors.grey[400],
              ),
            ),

            SizedBox(
              height: AppDimen.screenHeight * 0.02,
            ),

            ///Icons

            Padding(
              padding: EdgeInsets.only(
                  left: AppDimen.unitWidth * 20,
                  right: AppDimen.unitWidth * 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: AppDimen.unitWidth * 70,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(const QRViewExample());
                          },
                          child: Icon(
                            Icons.qr_code_scanner,
                            size: AppDimen.unitHeight * 16,
                            color: Colors.indigo[700],
                          ),
                        ),
                        Center(
                          child: Text(
                            "Scan any QR code",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 70,
                    child: Column(
                      children: [
                        Icon(
                          Icons.perm_contact_calendar_sharp,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Center(
                          child: Text(
                            "Pay contacts",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.phonelink_setup,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Text(
                          "Pay phone number",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: AppDimen.unitHeight * 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 70,
                    child: Column(
                      children: [
                        Icon(
                          Icons.food_bank_outlined,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Center(
                          child: Text(
                            "Bank transfer",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: AppDimen.screenHeight * 0.04,
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: AppDimen.unitWidth * 20,
                  right: AppDimen.unitWidth * 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: AppDimen.unitWidth * 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.attachment,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Center(
                          child: Text(
                            "Pay to UPI ID",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 70,
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Center(
                          child: Text(
                            "Self transfer",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 50,
                    child: Column(
                      children: [
                        Icon(
                          Icons.payment_sharp,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Text(
                          "Pay bills",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: AppDimen.unitHeight * 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 70,
                    child: Column(
                      children: [
                        Icon(
                          Icons.mobile_screen_share_rounded,
                          size: AppDimen.unitHeight * 16,
                          color: Colors.indigo[700],
                        ),
                        Center(
                          child: Text(
                            "Mobile recharge",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: AppDimen.screenHeight * 0.02,
            ),

            /// People

            Padding(
              padding: EdgeInsets.only(
                  left: AppDimen.unitWidth * 20,
                  right: AppDimen.unitWidth * 20),
              child: Text(
                "People",
                style: TextStyle(fontSize: AppDimen.unitHeight * 12),
              ),
            ),

            SizedBox(
              height: AppDimen.screenHeight * 0.02,
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: AppDimen.unitWidth * 20,
                  right: AppDimen.unitWidth * 20),
              child: SizedBox(
                height: AppDimen.screenHeight * 0.43,
                child: GridView.builder(
                    // controller: sc,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 11,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 80,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 30),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                              height: AppDimen.unitHeight * 35,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                shape: BoxShape.circle,
                              ),
                              child: const Center(child: Icon(Icons.person))),
                          SizedBox(
                            height: AppDimen.unitHeight * 3,
                          ),
                          Text(
                            "Pardeep",
                            style:
                                TextStyle(fontSize: AppDimen.unitHeight * 10),
                          )
                        ],
                      );
                    }),
              ),
            ),

            ///Business & bills
            Padding(
              padding: EdgeInsets.only(
                  left: AppDimen.unitWidth * 20,
                  right: AppDimen.unitWidth * 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business & bills",
                    style: TextStyle(fontSize: AppDimen.unitHeight * 11),
                  ),
                  Container(
                    height: AppDimen.unitHeight * 20,
                    width: AppDimen.screenWidth * 0.23,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[100],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.shopping_bag_sharp,
                            size: AppDimen.unitHeight * 10,
                            color: Colors.blue,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: AppDimen.unitHeight * 9),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: AppDimen.unitHeight * 10,
            ),

            SizedBox(
              height: AppDimen.unitHeight * 30,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: titleList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: AppDimen.unitHeight * 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          //color: Colors.lightBlue[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: AppDimen.unitWidth * 10,
                            right: AppDimen.unitWidth * 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.shopping_bag_sharp,
                              size: AppDimen.unitHeight * 10,
                            ),
                            SizedBox(
                              width: AppDimen.unitWidth * 10,
                            ),
                            Text(
                              titleList[index],
                              style:
                                  TextStyle(fontSize: AppDimen.unitHeight * 9),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      );

  Widget otherServices() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.unitWidth * 20, right: AppDimen.unitWidth * 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              otherApps("assets/images/goibibo.jpeg", "Goibibo"),
              otherApps("assets/images/airtel.png", "Airtel Prepaid"),
              otherApps("assets/images/map.jpeg", "Nearby Station"),
              otherApps("assets/images/jio.jpeg", "Jio Prepaid"),
            ],
          ),
          SizedBox(
            height: AppDimen.unitHeight * 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              otherApps("assets/images/redbus.png", "redBus"),
              otherApps("assets/images/5paisa.png", "5paisa"),
              otherApps("assets/images/makemytrip.jpeg", "MakeMy Trip"),
              otherApps("assets/images/moneyview.png", "Money View"),
            ],
          ),
        ],
      ),
    );
  }

  Widget promotion() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.unitWidth * 20, right: AppDimen.unitWidth * 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppDimen.unitHeight * 20,
          ),
          Text(
            "Promotions",
            style: TextStyle(fontSize: AppDimen.unitHeight * 11),
          ),
          SizedBox(
            height: AppDimen.unitHeight * 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              otherApps("assets/images/rewards.png", "Rewards"),
              otherApps("assets/images/offers.png", "Offers"),
              otherApps("assets/images/referrals.png", "Referrals"),
              otherApps("assets/images/indiHome.jpeg", "Indi-Home"),
            ],
          ),
        ],
      ),
    );
  }

  Widget historyAndBalance() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.unitWidth * 20, right: AppDimen.unitWidth * 20),
      child: Column(
        children: [
          ///History
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.restore,
                    size: AppDimen.unitHeight * 18,
                    color: Colors.indigo[700],
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 15,
                  ),
                  const Text(
                    "Show transaction history",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: AppDimen.unitHeight * 12,
              )
            ],
          ),
          SizedBox(
            height: AppDimen.unitHeight * 20,
          ),

          ///Balance
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.food_bank_outlined,
                    size: AppDimen.unitHeight * 18,
                    color: Colors.indigo[700],
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 15,
                  ),
                  const Text(
                    "View account balance",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: AppDimen.unitHeight * 12,
              )
            ],
          ),
          SizedBox(
            height: AppDimen.unitHeight * 20,
          ),

          ///Payments
          Row(
            children: [
              Icon(
                Icons.payments_outlined,
                size: AppDimen.unitHeight * 16,
                color: Colors.indigo[700],
              ),
              SizedBox(
                width: AppDimen.unitWidth * 15,
              ),
              const Text(
                "Regular payments",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(
              left: AppDimen.unitWidth * 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Set up bills, recharges and other payments"),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: AppDimen.unitHeight * 12,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget inviteImage() {
    return Column(
      children: [
        Image.asset(
          "assets/images/invitefrnd.jpeg",
          height: AppDimen.screenHeight * 0.3,
        ),
        SizedBox(
          height: AppDimen.unitHeight * 20,
        ),
        Text(
          "Showing businesses based on your location-Learn more",
          style: TextStyle(fontSize: AppDimen.unitHeight * 9),
        ),
        SizedBox(
          height: AppDimen.unitHeight * 20,
        ),
      ],
    );
  }

  Widget otherApps(String image, String text) {
    return SizedBox(
      width: AppDimen.screenWidth * 0.19,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: AppDimen.unitHeight * 20,
          ),
          SizedBox(
            height: AppDimen.unitHeight * 5,
          ),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: AppDimen.unitHeight * 10),
          ),
        ],
      ),
    );
  }
}
