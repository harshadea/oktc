import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';
import 'package:oktc/phone/otp.dart';

class MyPhone extends StatefulWidget {
  static String routeName = '/MyPhone';
  const MyPhone({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();
  var phone = '';

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 222,
                child: SvgPicture.asset(
                  'assets/icons/icons8-test-lab.svg',
                  width: 222,
                ),
              ),
              const Text(
                'Phone Verification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(height: 15),
              const Text(
                'We need to register your phone before getting Started!',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 33),
              Container(
                height: 55,
                margin: const EdgeInsets.only(left: 33, right: 33),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(width: 1, color: colors.red)),
                child: Row(
                  children: [
                     SizedBox(
                      width: 33,
                      child: Padding(
                        padding: const EdgeInsets.only(left:5),
                        child: TextField(
                          decoration: const InputDecoration(border: InputBorder.none),
                          controller: countrycode,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '|',
                      style: TextStyle(fontSize: 33),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            phone = value;
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mobile Number'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Container(
                height: 55,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 66, right: 66),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green.shade500),
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.lock_open,
                    color: colors.white,
                  ),
                  label: const Text(
                    "Send the code",
                    style: TextStyle(
                        color: colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  onPressed: () async{
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      timeout: const Duration(seconds: 60),
                      phoneNumber: '${countrycode.text+phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        MyPhone.verify = verificationId;
                        Get.to(() => const MyOtp());
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
