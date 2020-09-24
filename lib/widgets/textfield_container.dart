import 'package:flutter/material.dart';
import 'package:firstUi/constant.dart';
class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: kPrimaryLightColor
      ),
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 55.0,
      width: size.width * 0.7,
      child: child,
    );
  }
}
