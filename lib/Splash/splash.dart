import 'package:flutter/material.dart';
import'package:flutter_svg/flutter_svg.dart';
import 'package:oktc/Splash/components/google_auth.dart';
import 'package:oktc/Splash/components/phone_auth.dart';

class Splash extends StatelessWidget {
  static String routeName = "/Splash";
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 55),
          // const Spacer(),
          SizedBox(
            height: 444,
            child:
            SvgPicture.asset('assets/icons/icons8-firebase.svg', width: 222),
          ),

          const SizedBox(height: 10),
          const GoogleAuth(),
          const PhoneAuth(),

        ],
      ),
    ),
  );
}


