import 'package:flutter/material.dart';
import 'package:money_laundry/screens/login_screen.dart';
// import 'auth_choice_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6594B1),
      body: Center(
        child: Image.asset(
          './assets/images/logo.png',
          width: 500,
        ),
      ),
    );
  }
}