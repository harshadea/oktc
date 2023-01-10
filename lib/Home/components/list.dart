import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktc/Controller/product_controller.dart';
import 'package:oktc/Help/colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(builder: (controller) {
      return Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: controller.searchList.length,
                  itemBuilder: (context, i) {
                    return Card(
                      color: Colors.blueGrey.shade900,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                    child: Image.asset(
                                        'assets/images/magic h2.png',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              padding: const EdgeInsets.all(2),
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: colors.red)),
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: colors.red),
                                              )),
                                          const SizedBox(width: 10),
                                          Container(
                                            height: 22,
                                            width: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                border: Border.all(
                                                    color: colors.white)),
                                            child: Row(
                                              children: const [
                                                SizedBox(width: 5),
                                                Icon(Icons.star,
                                                    size: 15,
                                                    color: colors.yellow),
                                                SizedBox(width: 5),
                                                Text(
                                                  '4.6',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: colors.grey),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        controller.datamodel!.data![i]
                                            .products![0].kitchenItemName
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        '\$${controller.datamodel!.data![i].products![0].kitchenItemAmount}'
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(height: 5),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Center(
                                              child: Text(
                                            'Add to Cart',
                                            style:
                                                TextStyle(color: colors.white),
                                          )),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.remove_circle,
                                              size: 22,
                                              color: colors.green,
                                            ),
                                            onPressed: () =>
                                                controller.decrement(),
                                          ),
                                          Obx(() => Text(
                                              controller.products.toString(),
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: colors.white))),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.add_circle,
                                              size: 22,
                                              color: colors.green,
                                            ),
                                            onPressed: () =>
                                                controller.intcrement(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      );
    });
  }
}
