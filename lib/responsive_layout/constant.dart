import 'package:flutter/material.dart';

import '../screens/customer/add_customer.dart';
import '../screens/customer/manage_customer.dart';
import '../screens/product/add_product_widget.dart';
import '../screens/product/manage_product.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/drawerheader.dart';
import '../widgets/expansion_tile.dart';

var myappbar = AppBar(
  title: Text('data'),
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text("njhdf"),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("njhdf"),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("njhdf"),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("njhdf"),
        ),
      ],
    ),
  ),
);
