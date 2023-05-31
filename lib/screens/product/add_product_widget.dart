import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/table_product.dart';
import 'package:flutter_application_1/widgets/widget.dart';

import '../../app/mediaquery.dart';

class AddProductWidget extends StatelessWidget {
  final TextEditingController _productname = TextEditingController();
  final TextEditingController _company = TextEditingController();
  final TextEditingController _supplier = TextEditingController();
  final TextEditingController _category = TextEditingController();
  AddProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Container(
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Add New Product",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(08))),
                padding: const EdgeInsets.all(5),
                height: screenHeight(context) * 0.75,
                width: screenWidth(context),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            " Product Name",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.05,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              width: 300,
                              child: TextField(
                                controller: _productname,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            " Company Name ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.04,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              width: 300,
                              child: TextField(
                                controller: _company,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          const Text(
                            " Supplier Name",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.05,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              width: 300,
                              child: TextField(
                                controller: _supplier,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Category Name",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.05,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              width: 300,
                              child: TextField(
                                controller: _productname,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.06,
                      ),
                      const table_product(),
                      SizedBox(
                        height: screenHeight(context) * 0.03,
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.06,
                        width: screenWidth(context) * 0.1,
                        child: Button(
                          ontap: () {},
                          t1: 'Add Product',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
