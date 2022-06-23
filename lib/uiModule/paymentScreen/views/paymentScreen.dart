import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpay_clone/appSize/appSize.dart';
import 'package:qr_code_scanner/src/types/barcode.dart';

class Payment extends StatelessWidget {
  Payment({Key? key, required this.result}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  TextEditingController noteController = TextEditingController();

  Barcode? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: AppDimen.screenHeight * 0.12,
              width: AppDimen.screenWidth * 0.15,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  result!.code!
                      .split('&')[1]
                      .replaceAll("pn=", '')
                      .replaceAll("%20", " ")[0],
                  style: TextStyle(
                      fontSize: AppDimen.unitHeight * 20, color: Colors.white),
                ),
              ),
            ),
            Text(
              "Paying to ${result!.code!.split('&')[1].replaceAll("pn=", '').replaceAll("%20", " ")}",
              style: TextStyle(
                  fontSize: AppDimen.unitHeight * 15, color: Colors.black),
            ),
            SizedBox(
              height: AppDimen.unitHeight * 5,
            ),
            Text(result!.code!.split('&')[0].replaceAll("upi://pay?pa=", '')),
            SizedBox(
              height: AppDimen.unitHeight * 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs",
                    style: TextStyle(
                        fontSize: AppDimen.unitHeight * 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: AppDimen.unitWidth * 5,
                  ),
                  Container(
                    width: AppDimen.screenWidth * 0.2,
                    //  height: AppDimen.unitHeight * 20,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '0',
                          hintStyle:
                              TextStyle(fontSize: AppDimen.unitHeight * 20)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppDimen.unitHeight * 5,
            ),
            Flexible(
              child: Container(
                width: AppDimen.screenWidth * 0.5,
                height: AppDimen.screenHeight * 0.08,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: SizedBox(
                    width: AppDimen.screenWidth * 0.5,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: noteController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Add a note',
                          hintStyle:
                              TextStyle(fontSize: AppDimen.unitHeight * 10)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
