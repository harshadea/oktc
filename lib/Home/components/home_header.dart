import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';


class HomeHeader extends StatelessWidget {
  static String routeName = "/HomeHeader";
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colors.black,
          ),
        ),
        TextFormField(),
        IconButton(
          padding: EdgeInsets.zero,
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.share,
            color: colors.white,
          ),
        ),
      ],
    );
  }
}
