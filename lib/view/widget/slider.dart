import 'package:algoriza_test1/controller/onboardcontroller/onboard.dart';
import 'package:algoriza_test1/static/onboardstatic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboardslider extends GetView<Imponboardcontroller> {
  const Onboardslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onpagechanged(val);
        },
        itemCount: onboardlist.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  onboardlist[i].image!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  onboardlist[i].body!,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, height: 1.4),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(onboardlist[i].subtitle!),
              ],
            ));
  }
}
