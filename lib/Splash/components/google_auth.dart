import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';
import 'package:oktc/google/g_page.dart';


class GoogleAuth extends StatelessWidget {
  static String routeName = '/GoogleAuth';
  const GoogleAuth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(33),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.to(() => const GPage());
            },
            child: Container(
              height: 55,
              width: 277,
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(33),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    SvgPicture.asset('assets/icons/icons8-google.svg'),
                  ),
                  const Center(
                    child: Text(
                      'Google',
                      style: TextStyle(
                          color: colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
