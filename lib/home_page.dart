import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/colors.dart';
import 'package:flutter_application_1/screens/customer/add_customer.dart';
import 'package:flutter_application_1/screens/customer/manage_customer.dart';
import 'package:flutter_application_1/screens/product/items.dart';
import 'package:flutter_application_1/screens/product/manage_product.dart';

import 'responsive_layout/constant.dart';
import 'screens/product/add_product_widget.dart';
import 'widgets/dashboard_body.dart';
import 'widgets/drawerheader.dart';
import 'widgets/expansion_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool sort = true;
  List<Data>? filterData;

  onsortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        filterData!.sort((a, b) => a.productname!.compareTo(b.productname!));
      } else {
        filterData!.sort((a, b) => b.productname!.compareTo(a.productname!));
      }
    }
  }

  @override
  void initState() {
    filterData = myData;
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  Widget _bodyWidget = const DashboardBody();

  void _updateBodyWidget(Widget widget) {
    setState(() {
      _bodyWidget = widget;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: myappbar,
      body: _bodyWidget,
    );
  }
}
