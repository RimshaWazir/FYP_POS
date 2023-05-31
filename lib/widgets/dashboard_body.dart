import 'package:flutter/material.dart';
import '../responsive_layout/constant.dart';
import '../screens/customer/add_customer.dart';
import '../screens/customer/manage_customer.dart';
import '../screens/product/add_product_widget.dart';
import '../screens/product/manage_product.dart';
import 'drawerheader.dart';
import 'expansion_tile.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({
    super.key,
  });

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
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
      body: Row(
        children: [
          Drawer(
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
        ],
      ),
      backgroundColor: Colors.red,
    );
  }
}
    // return SingleChildScrollView(
    //   child: Row(
    //     children: [
    //       myappbar,
    //       const Padding(
    //         padding: EdgeInsets.all(20.0),
    //         child: GridRow(),
    //       ),
    //       Divider(
    //         color: Colors.grey,
    //       ),
    //       Padding(
    //         padding:
    //             const EdgeInsets.only(right: 80, left: 80, top: 20, bottom: 20),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Expanded(
    //               flex: 3,
    //               child: Container(
    //                 height: screenHeight(context) * 0.3,
    //                 width: screenWidth(context) * 0.3,
    //                 decoration: BoxDecoration(color: color),
    //               ),
    //             ),
    //             SizedBox(
    //               width: screenWidth(context) * 0.2,
    //             ),
    //             HistoryDetailTable(),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  
