import 'package:flutter/material.dart';
import 'package:firstUi/constant.dart';
import 'package:flutter_svg/svg.dart';
class LogoButton extends StatelessWidget {
  LogoButton({Key key, this.uri = "facebook", this.onTap}) : super(key: key);
  final String uri;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: kPrimaryLightColor),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryLightColor,
                  offset: Offset(5, 5),
                  blurRadius: 5.0),
              BoxShadow(
                  color: Colors.white, offset: Offset(5, 5), blurRadius: 5.0)
            ],
            borderRadius: BorderRadius.circular(50.0)),
        height: 50,
        width: 50,
        child: GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(
            "assets/icons/$uri.svg",
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
