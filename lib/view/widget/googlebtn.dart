import 'package:flutter/material.dart';

class Googlebtn extends StatelessWidget {
  const Googlebtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.blue),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/google.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Sign in with google",
                style: TextStyle(fontSize: 15, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
