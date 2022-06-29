import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String text;
  final IconData icon;

  const Textfield({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: Icon(icon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(1))),
      ),
    );
  }
}
