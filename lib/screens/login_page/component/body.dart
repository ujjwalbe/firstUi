import 'package:firstUi/constant.dart';
import 'package:flutter/material.dart';
import 'package:firstUi/screens/login_page/component/background.dart';
import 'package:firstUi/widgets/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firstUi/widgets/rounded_input.dart';
import 'package:firstUi/widgets/password_field.dart';
import 'package:firstUi/widgets/account_check.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.06,
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),
            Container(
              child: SvgPicture.asset(
                "assets/icons/login.svg",
                width: size.width * 0.7,
                height: size.height * 0.4,
              ),
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            RoundedInput(),
            PasswordInput(),
            SizedBox(
              height: size.height * 0.020,
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
                Navigator.pushNamed(context, '/');
              },
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            TextButton(
              headText: "Don't have an Account? ",
              buttonText: "Sign Up",
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
            SizedBox(
              height: size.height * 0.045,
            ),
          ],
        ),
      )),
    );
  }
}
