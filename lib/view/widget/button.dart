import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onpress;
  const Button({Key? key, required this.onpress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {
          onpress;
        },
        color: Colors.blue,
        child: Text(
          "$text",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
