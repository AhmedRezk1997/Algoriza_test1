import 'package:algoriza_test1/controller/onboardcontroller/onboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mybtn extends GetView<Imponboardcontroller> {
  const Mybtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      height: 60,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          controller.next();
        },
        color: Colors.teal,
        child: Text(
          "Get Started",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
