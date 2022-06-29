import 'package:algoriza_test1/static/onboardstatic.dart';
import 'package:algoriza_test1/view/screens/auth/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Onboardingcontroller extends GetxController {
  onpagechanged(int index);
  next();
}

class Imponboardcontroller extends Onboardingcontroller {
  int currentpage = 0;
  late PageController pageController;
  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  next() {
    currentpage++;

    if (currentpage > onboardlist.length - 1) {
      Get.off(const Loginpage());
    } else {
      pageController.animateToPage(currentpage,
          duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
