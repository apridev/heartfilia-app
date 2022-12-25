import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heartfilia_app/components/calender_page.dart';
import 'package:heartfilia_app/components/chat_page.dart';
import 'package:heartfilia_app/components/home_page.dart';
import 'package:heartfilia_app/components/like_page.dart';
import 'package:heartfilia_app/components/navigationbar-page.dart';
import 'package:heartfilia_app/home/cart-page.dart';
import 'package:heartfilia_app/home/register_page.dart';
import 'package:heartfilia_app/home/login_page.dart';
import 'package:heartfilia_app/home/reset_password.dart';
import 'package:heartfilia_app/home/verification-page.dart';
import 'package:heartfilia_app/pages/onboarding_page.dart';
import 'package:heartfilia_app/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
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
        '/navigationbar-page' :(context) => NavigationbarPage(),
        '/home-page' :(context) => HomePage(),
        '/calender-page' :(context) => CalenderPage(),
        '/chat-page' :(context) => ChatPage(),
        '/like-page' :(context) => LikePage(),
        '/cart-page' :(context) => CartPage(),
      },
    );
  }
}