import 'package:firstUi/screens/login_page/login.dart';
import 'package:firstUi/screens/signup_page/signup.dart';
import 'package:flutter/material.dart';
import 'package:firstUi/screens/welcome_page/welcome.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context)=> SingupPage()
      },
    );
  }
}

