import 'package:algoriza_test1/view/screens/auth/signup.dart';
import 'package:algoriza_test1/view/widget/button.dart';
import 'package:algoriza_test1/view/widget/devider.dart';
import 'package:algoriza_test1/view/widget/googlebtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  double screenheight = 0;
  double screenwidth = 0;
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Color(0xff8cccff),
      body: SingleChildScrollView(
        child: Container(
          height: screenheight,
          width: screenwidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/sign.png",
                width: double.infinity,
                height: 230,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "sign in",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Row(
                      //  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Help",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.help,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "phone number",
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IntlPhoneField(
                  showCountryFlag: false,
                  decoration: InputDecoration(
                    hintText: "Eg.812345678",
                    border: OutlineInputBorder(
                        //  borderRadius: BorderRadius.circular(15),
                        ),
                  ),
                ),
              ),
              Button(
                text: "Sign in",
                onpress: () {},
              ),
              Devider(),
              SizedBox(
                height: 8,
              ),
              Googlebtn(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn’t has any account"),
                  InkWell(
                    onTap: () {
                      Get.to(Registerpage());
                    },
                    child: Text(
                      "Register here",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
