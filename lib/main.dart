import 'package:flutter/material.dart';
import 'package:heartfilia_app/home/register_page.dart';
import 'package:heartfilia_app/home/login_page.dart';
import 'package:heartfilia_app/home/reset_password.dart';
import 'package:heartfilia_app/home/verification-page.dart';
import 'package:heartfilia_app/pages/onboarding_page.dart';
import 'package:heartfilia_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' :(context) => SplashScreen(),
        '/onboarding-page' :(context) => OnboardingPage(),
        '/login-page' :(context) => LoginPage(),
        '/register-page' :(context) => RegisterPage(),
        '/reset-password' :(context) => ResetPasswordPage(),
        '/verification-page' :(context) => VerificationPage(),
      },
    );
  }
}