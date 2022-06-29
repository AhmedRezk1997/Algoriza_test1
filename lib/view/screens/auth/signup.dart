import 'package:algoriza_test1/view/screens/auth/loginpage.dart';
import 'package:algoriza_test1/view/widget/button.dart';
import 'package:algoriza_test1/view/widget/devider.dart';
import 'package:algoriza_test1/view/widget/googlebtn.dart';
import 'package:algoriza_test1/view/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Registerpage extends StatefulWidget {
  Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
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
                height: 130,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Register",
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
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  "Email",
                ),
              ),
              Textfield(
                icon: (Icons.email_outlined),
                text: "Eg. example@gmail.com",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "phone number",
                ),
              ),
              SizedBox(
                height: 5,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  "password",
                ),
              ),
              Textfield(
                text: "password",
                icon: Icons.remove_red_eye,
              ),
              Button(
                text: "Register",
                onpress: () {},
              ),
              Devider(),
              SizedBox(
                height: 5,
              ),
              Googlebtn(),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Has any account"),
                  InkWell(
                    onTap: () {
                      Get.to(Loginpage());
                    },
                    child: Text(
                      "Sign in here",
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
