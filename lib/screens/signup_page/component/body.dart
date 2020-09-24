import 'package:firstUi/constant.dart';
import 'package:flutter/material.dart';
import 'package:firstUi/screens/signup_page/component/background.dart';
import 'package:firstUi/widgets/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firstUi/widgets/rounded_input.dart';
import 'package:firstUi/widgets/password_field.dart';
import 'package:firstUi/widgets/account_check.dart';
import 'logo_button.dart';

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
                "SIGNUP",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),
            Container(
              child: SvgPicture.asset(
                "assets/icons/signup.svg",
                width: size.width * 0.7,
                height: size.height * 0.35,
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
                  "SIGN UP",
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
              headText: "Already have an Account? ",
              buttonText: "Login",
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            Container(
              padding: EdgeInsetsDirectional.only(
                  start: size.width * 0.12, end: size.width * 0.12),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: kPrimaryColor,
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("OR"),
                  ),
                  Expanded(
                      child: Divider(
                    color: kPrimaryColor,
                    thickness: 1.5,
                  ))
                ],
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoButton(),
                LogoButton(uri: "twitter"),
                LogoButton(uri: "google-plus")
              ],
            )),
            // SizedBox(
            //   height: size.height * 0.045,
            // ),
          ],
        ),
      )),
    );
  }
}
