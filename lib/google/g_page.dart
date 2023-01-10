import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';
import 'package:oktc/Home/home_screen.dart';
import 'package:oktc/google/g_sign.dart';
import 'package:provider/provider.dart';

class GPage extends StatelessWidget {
  const GPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 222,
              child: SvgPicture.asset(
                'assets/icons/icons8-google.svg',
                width: 222,
              ),
            ),
            const Text(
              'Google Sign In',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 15),
            const Text(
              'Login Your Google Account Getting Started!',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 22),
            ElevatedButton.icon(
              // style: ElevatedButton.styleFrom(
              //   minimumSize: const Size(222, 50),
              // ),
              // icon: FaIcon(FontAwesomeIcons.google,color:colors.blue),
              icon: SvgPicture.asset('assets/icons/icons8-google.svg',fit: BoxFit.cover),
              label: const Text('Sign Up with Google',style: TextStyle(color: colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              onPressed: () {
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
                Get.to(() => const HomeScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
