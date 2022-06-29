import 'package:flutter/material.dart';

class Devider extends StatelessWidget {
  const Devider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: Colors.black12,
              thickness: 1,
            ),
          ),
          Text(
            "OR",
            style: TextStyle(fontSize: 15),
          ),
          Expanded(
            child: Divider(
              color: Colors.black12,
              thickness: 1,
            ),
          ),
        ]);
  }
}
