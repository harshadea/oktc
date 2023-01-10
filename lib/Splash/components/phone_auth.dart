import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';
import 'package:oktc/phone/phone.dart';

class PhoneAuth extends StatelessWidget {
  static String routeName = '/PhoneAuth';
  const PhoneAuth({
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
              Get.to(() =>  const MyPhone());
            },
            child: Container(
              height: 55,
              width: 277,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
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
                      child: IconButton(
                        icon: const Icon(Icons.phone,
                            size: 33, color: colors.white),
                        onPressed: () {},
                      )),
                  const Center(
                    child: Text(
                      'Phone',
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