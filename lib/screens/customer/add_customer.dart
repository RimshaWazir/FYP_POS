import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/table_product.dart';
import 'package:flutter_application_1/widgets/widget.dart';

import '../../app/mediaquery.dart';
import 'app/headercard.dart';
import 'app/labels.dart';

class AddCustomerWidget extends StatelessWidget {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _area = TextEditingController();
  final TextEditingController _category = TextEditingController();
  final TextEditingController _company = TextEditingController();
  final TextEditingController _salesman = TextEditingController();
  AddCustomerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          headercard(text: "Add Customer"),
          SizedBox(
            height: 3,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(08))),
            padding: const EdgeInsets.all(5),
            height: screenHeight(context) * 0.75,
            width: screenWidth(context),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 160),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        labels(
                          text: ' Customer Name',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.05,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Mobile',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.095,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _mobile,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Address',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.09,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _address,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Email ',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.1,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _email,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Area  ',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.1,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _area,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Category',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.085,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _category,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: 'Company',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.084,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _company,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        labels(
                          text: ' Salesman',
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.08,
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.06,
                          width: screenWidth(context) * 0.5,
                          child: TextField(
                            controller: _salesman,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.08,
                      width: screenWidth(context) * 0.1,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Button(
                          ontap: () {},
                          t1: 'Add New Customer',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
