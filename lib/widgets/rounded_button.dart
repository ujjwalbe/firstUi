import 'package:flutter/material.dart';
import 'package:firstUi/constant.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;
  final double height;
  final double width;
  final Color color;
  RoundedButton(
      {Key key,
      this.child,
      this.onPress,
      this.width = 100.0,
      this.height = 40.0,
      this.color = kPrimaryColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: color),
        child: MaterialButton(
          child: child,
          onPressed: onPress,
        ),
      ),
    );
  }
}
