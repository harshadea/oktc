import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktc/Help/colors.dart';
import 'package:oktc/Home/components/home_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 55),
            child: Container(
                height: 15,
                width: 222,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: colors.grey),
                    color: colors.black),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search, color: colors.grey),
                      ),
                      hintText: 'Search Dish..',
                      hintStyle: TextStyle(color: colors.grey)),
                )),
          ),
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
      ),
      body: const HomeBody(),
    );
  }
}
