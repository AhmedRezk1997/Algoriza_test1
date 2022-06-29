import 'dart:ui';

import 'package:algoriza_test1/controller/onboardcontroller/onboard.dart';
import 'package:algoriza_test1/view/screens/auth/loginpage.dart';
import 'package:algoriza_test1/view/screens/auth/signup.dart';
import 'package:algoriza_test1/view/widget/listgenerate.dart';
import 'package:algoriza_test1/view/widget/mybtn.dart';
import 'package:algoriza_test1/static/onboardstatic.dart';
import 'package:algoriza_test1/view/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboardingpage extends StatelessWidget {
  Onboardingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Imponboardcontroller());
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      color: Colors.teal,
                      onPressed: () {
                        Get.off(const Loginpage());
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "7",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow[800]),
                    ),
                    Text(
                      "Krave",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent[700]),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Onboardslider(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      OnboardListGenerate(),
                      Mybtn(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account? ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            child: Text("Sign up",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal)),
                            onTap: () {
                              Get.off(Registerpage());
                            },
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
