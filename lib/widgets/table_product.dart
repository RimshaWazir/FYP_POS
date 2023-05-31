import 'package:flutter/material.dart';

class table_product extends StatelessWidget {
  const table_product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder.all(),
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Trade Price',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'S.P/T.P',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Cost Price',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Ctn Pack',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Packing',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Discount',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Unit',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            DataCell(
              SizedBox(
                height: 40,
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
