import 'package:flutter/material.dart';
import 'package:firstUi/constant.dart';

class TextButton extends StatelessWidget {
  TextButton({Key key, this.headText= "Head Text", this.buttonText = "Button Text", this.onTap})
      : super(key: key);
  final VoidCallback onTap;
  final String headText ;
  final String buttonText ;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(headText),
        GestureDetector(
          child: Text(
            buttonText,
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          onTap: onTap
        )
      ],
    ));
  }
}
