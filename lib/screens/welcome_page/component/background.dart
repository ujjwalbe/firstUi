import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center, 
        children: [
        Positioned(
        top: 0,
        left: 0,
          child: Image.asset("assets/images/main_top.png", width: size.width * 0.3,),
        ),
        Positioned(
          top: size.height * 0.06,
          child: Text("Welcome", style: TextStyle(fontSize: 30.0),),),
        Positioned(
          top: size.height * 0.125,
          child: SvgPicture.asset("assets/icons/chat.svg", width: size.width * 0.9,
          height: size.height * 0.5,),),
        Positioned(
          bottom: 0,
          left: -12,
          child: Image.asset("assets/images/main_bottom.png",
           width: size.width * 0.2,
           
           ),
        ),
        child
      ]),
    );
  }
}
