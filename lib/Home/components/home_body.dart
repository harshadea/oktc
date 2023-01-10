import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktc/Controller/product_controller.dart';
import 'package:oktc/Help/colors.dart';

import 'list.dart';


class HomeBody extends GetView<ProductController> {
  static String routeName = "/HomeBody";
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(builder: (controller) {
      return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
            ),
            child: Obx(() {
              return controller.loading.isTrue
                  ? const Center(
                      child: LinearProgressIndicator(),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                height: 66,
                                width: 66,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset('assets/images/magic.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'Magic Hands',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      color: Colors.white),
                                ),
                                Text(
                                  'From PoojaPura',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.grey.shade400),
                                ),
                                Text(
                                  'Member Since Aug 3 2021',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                            const SizedBox(width: 44),
                            Column(
                              children: [
                                Container(
                                  height: 33,
                                  width: 111,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue.shade200),
                                  child: TextButton.icon(
                                      icon: const Icon(Icons.account_box,
                                          size: 20, color: colors.black),
                                      label: const Text('Follow',
                                          style: TextStyle(
                                              color: colors.black,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () {}),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const [
                                    Icon(Icons.star, color: colors.yellow),
                                    Icon(Icons.star, color: colors.yellow),
                                    Icon(Icons.star, color: colors.yellow),
                                    Icon(Icons.star, color: colors.grey),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: Container(
                            height: 33,
                            width: 360,
                            decoration: BoxDecoration(
                                color: colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              children: [
                                const SizedBox(width: 33),
                                Text(
                                  '25',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade200,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'Posts',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 95),
                                Text(
                                  '25k',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade200,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'Followers',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 384,
                          color: colors.black,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Magic Hands Deal For You',
                                    style: TextStyle(
                                        color: colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Center(
                                child: Container(
                                  height: 100,
                                  width: 333,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                        autoPlayCurve: Curves.linearToEaseOut,
                                        autoPlay: true,
                                        autoPlayAnimationDuration:
                                            const Duration(milliseconds: 1000),
                                        aspectRatio: 1.5,
                                        viewportFraction: 1),
                                    items: controller.sliders.map((item) {
                                      return Image.asset(item,
                                          fit: BoxFit.cover);
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SingleChildScrollView(
                          child: AspectRatio(
                            aspectRatio: .55,
                            child: ProductListScreen()
                          ),
                        ),
                      ],
                    );
            }),
          ));
    });
  }
}
