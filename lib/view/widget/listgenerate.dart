import 'package:algoriza_test1/controller/onboardcontroller/onboard.dart';
import 'package:algoriza_test1/static/onboardstatic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardListGenerate extends StatelessWidget {
  const OnboardListGenerate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Imponboardcontroller>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onboardlist.length,
              (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 5),
                    duration: Duration(microseconds: 800),
                    width: controller.currentpage == index ? 22 : 15,
                    height: 6,
                    decoration: BoxDecoration(
                        color: controller.currentpage == index
                            ? Colors.yellow[700]
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  )),
        ],
      ),
    );
  }
}
