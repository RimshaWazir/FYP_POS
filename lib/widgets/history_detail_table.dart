import 'package:flutter/material.dart';

import '../app/mediaquery.dart';

class HistoryDetailTable extends StatelessWidget {
  const HistoryDetailTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: screenHeight(context) * 0.233,
        width: screenWidth(context) * 0.25,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: DataTable(
          border: TableBorder.all(),
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Name',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Price Rs.',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text(
                  'Sales',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                )),
                DataCell(Text('1900')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text(
                  'Purchase',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                )),
                DataCell(Text('4300')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
