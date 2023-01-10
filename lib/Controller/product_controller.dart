import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:oktc/Help/colors.dart';

import '../Help/Model/DataModel.dart';

class ProductController extends GetxController {
  TextEditingController search = TextEditingController();

  var products = 1.obs;

  intcrement() {
    products.value++;
  }

  decrement() {
    if (products.value <= 0) {
      Get.snackbar(
        "Buying Products",
        "Can't be less than one",
        icon: const Icon(CupertinoIcons.nosign, color: colors.white),
        barBlur: 20,
        isDismissible: true,
        snackPosition: SnackPosition.TOP,
        colorText: colors.white,
        backgroundColor: colors.red,
        duration: const Duration(seconds: 3),
      );
    } else {
      products.value--;
    }
  }

  List searchList = [];
  List sliders = [
    'assets/images/magic h1.png',
    'assets/images/magic h2.png',
    'assets/images/magic h3.png',
    'assets/images/magic h4.png',
  ];

  var loading = true.obs;

  int selectedIndex = 0;

  DataModel? datamodel;

  Future getData() async {
    try {
      loading.value = true;
      var url =
          "https://www.butomy.com/api/getbusinessbytimeline-petpooja-timing? business_type=1&page_id=351&user_id=367&offset=0&products_type=all&placeorder_type=all";
      var response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        // print(response.body);
        datamodel = DataModel.fromJson(jsonDecode(response.body));
      }
      searchToList();
      loading.value = false;
    } catch (e) {
      Get.snackbar("title", "$e", snackPosition: SnackPosition.BOTTOM);
      loading.value = false;
    }
  }

  searchToList() {
    searchList.clear();
    for (var i = 0; i < datamodel!.data!.length; i++) {
      searchList.add([
        datamodel!.data![i].categoryId,
        datamodel!.data![i].categoryName,
        datamodel!.data![i].products,
        [
          for (var j = 0; j < datamodel!.data![i].products!.length; j++)
            [
              datamodel!.data![i].products![j].kitchenItemAmount,
              datamodel!.data![i].products![j].kitchenItemId,
              datamodel!.data![i].products![j].kitchenItemImage,
              datamodel!.data![i].products![j].kitchenItemName,
              datamodel!.data![i].products![j].userId,
              datamodel!.data![i].products![j].busaddress,
              datamodel!.data![i].products![j].businessDrawerStatus,
              datamodel!.data![i].products![j].businessStatus,
              datamodel!.data![i].products![j].buyStatus,
              datamodel!.data![i].products![j].isCart,
              datamodel!.data![i].products![j].isDeliver,
              datamodel!.data![i].products![j].itemDiscountPrice,
              datamodel!.data![i].products![j].itemPackagingCharge,
              datamodel!.data![i].products![j].mode,
              datamodel!.data![i].products![j].placeorderType,
              datamodel!.data![i].products![j].productsMaxQuantity,
              datamodel!.data![i].products![j].productsQuantity,
              datamodel!.data![i].products![j].productsStatus,
              datamodel!.data![i].products![j].productsTempQuantity,
              datamodel!.data![i].products![j].productsType,
              datamodel!.data![i].products![j].verificationStatus,
            ]
        ]
      ]);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
