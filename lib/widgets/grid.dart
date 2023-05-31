import 'package:flutter/material.dart';

import '../app/mediaquery.dart';

class GridRow extends StatelessWidget {
  const GridRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Create New Invoice',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Add Product',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Add Customer',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Sales Report',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Purchase Report ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Stock Report',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Account Summary',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Grid(
                  ontap: () {},
                  icons: Icons.abc,
                  title: 'Add Supplier',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Grid extends StatelessWidget {
  Function() ontap;
  String title;
  IconData icons;
  Grid({
    required this.icons,
    required this.title,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.grey,
      onTap: ontap,
      child: SizedBox(
        height: screenHeight(context) * 0.2,
        width: screenWidth(context) * 0.2,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(title), Icon(icons)],
          ),
        ),
      ),
    );
  }
}
