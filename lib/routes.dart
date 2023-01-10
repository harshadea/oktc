import 'package:oktc/Home/components/home_body.dart';
import 'package:oktc/Home/home_screen.dart';
import 'package:oktc/Splash/components/google_auth.dart';
import 'package:oktc/Splash/components/phone_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:oktc/phone/otp.dart';
import 'package:oktc/phone/phone.dart';
import 'package:oktc/Splash/splash.dart';
import 'Home/components/home_header.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => const Splash(),
  MyPhone.routeName: (context) => const MyPhone(),
  MyOtp.routeName: (context) => const MyOtp(),
  GoogleAuth.routeName: (context) => const GoogleAuth(),
  PhoneAuth.routeName: (context) => const PhoneAuth(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  HomeHeader.routeName: (context) => const HomeHeader(),
  HomeBody.routeName: (context) => const HomeBody(),
};
