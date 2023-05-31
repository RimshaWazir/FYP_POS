import 'package:flutter/material.dart';

import '../screens/customer/add_customer.dart';
import '../screens/customer/manage_customer.dart';
import '../screens/product/add_product_widget.dart';
import '../screens/product/manage_product.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/drawerheader.dart';
import '../widgets/expansion_tile.dart';
import 'constant.dart';

class MobileScaffold extends StatefulWidget {
  MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
      appBar: myappbar,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 136, 0),
        child: Column(
          children: [
            const DrawerHeaderPortion(),
            ListTile(
              leading: const Icon(
                Icons.explore,
              ),
              title: const Text('Dashboard'),
              onTap: () {
                _updateBodyWidget(
                  DashboardBody(),
                );
              },
            ),
            sideBarTile("Product", "Add Product", "Manage Product", () {
              _updateBodyWidget(AddProductWidget());
            }, anotherontap: () {
              _updateBodyWidget(
                const Manage_Product(),
              );
            }),
            sideBarTile(
              "Invoice",
              "Add Invoice",
              "Manage Invoice",
              () {
                _updateBodyWidget(
                  const Center(
                    child: Text('Add Invoice Body'),
                  ),
                );
              },
            ),
            sideBarTile("Customer", "Add Customer", "Manage Customer", () {
              _updateBodyWidget(AddCustomerWidget());
            }, anotherontap: () {
              _updateBodyWidget(
                const Manage_Customer(),
              );
            }),
            sideBarTile(
              "Invoice",
              "Add Invoice",
              "Manage Invoice",
              () {
                _updateBodyWidget(
                  const Center(
                    child: Text('Add Invoice Body'),
                  ),
                );
              },
              anotherontap: () {
                _updateBodyWidget(
                  const Center(
                    child: Text('Manage Manage Body'),
                  ),
                );
              },
              thirdontap: () {
                _updateBodyWidget(
                  const Center(
                    child: Text('Manage Manage Body'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
}
