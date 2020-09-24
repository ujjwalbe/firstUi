import 'package:firstUi/constant.dart';
import 'package:flutter/material.dart';
import 'package:firstUi/screens/welcome_page/component/background.dart';
import 'package:firstUi/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: size.height * 0.45,
          ),
          RoundedButton(
            height: 55,
            width: size.width * 0.7,
            child: Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            onPress: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          RoundedButton(
            color: kPrimaryLightColor,
            height: 55,
            width: size.width * 0.7,
            child: Center(
              child: Text(
                "SIGNUP",
                style: TextStyle(
                    color: kPrimaryColor.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            onPress: () {
               Navigator.pushNamed(context, '/signup');
            },
          )
        ],
      )),
    );
  }
}
