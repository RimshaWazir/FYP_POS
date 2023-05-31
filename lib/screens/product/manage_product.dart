import 'package:flutter/material.dart';

import '../../app/colors.dart';
import 'items.dart';

class Manage_Product extends StatefulWidget {
  const Manage_Product({super.key});

  @override
  State<Manage_Product> createState() => _Manage_ProductState();
}

class _Manage_ProductState extends State<Manage_Product> {
  bool sort = true;
  List<Data>? filterData;

  onsortColum(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
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
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                height: 50,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Manage Product",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            SizedBox(
                width: double.infinity,
                child: PaginatedDataTable(
                  sortColumnIndex: 1,
                  sortAscending: sort,
                  header: Container(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                          hintText: "Enter Product Name",
                          border: OutlineInputBorder()),
                      onChanged: (value) {
                        setState(() {
                          myData = filterData!
                              .where((element) =>
                                  element.productname!.contains(value))
                              .toList();
                        });
                      },
                    ),
                  ),
                  source: RowSource(
                    myData: myData,
                    count: myData.length,
                  ),
                  rowsPerPage: 7,
                  columnSpacing: 8,
                  columns: [
                    const DataColumn(
                      label: Text(
                        "Product Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    DataColumn(
                        label: const Text(
                          "Product Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        onSort: (columnIndex, ascending) {
                          setState(() {
                            sort = !sort;
                          });

                          onsortColum(columnIndex, ascending);
                        }),
                    const DataColumn(
                      label: Text(
                        "Sell Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "Ctn Quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "Supplier Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "Supplier Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Action",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

class RowSource extends DataTableSource {
  var myData;
  final count;
  RowSource({
    required this.myData,
    required this.count,
  });

  @override
  DataRow? getRow(int index) {
    if (index < rowCount) {
      return recentFileDataRow(myData![index]);
    } else
      return null;
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => count;

  @override
  int get selectedRowCount => 0;
}

DataRow recentFileDataRow(var data) {
  return DataRow(
    cells: [
      DataCell(Text(data.id.toString())),
      DataCell(Text(data.productname ?? "Name")),
      DataCell(Text(data.ctnquantity.toString())),
      DataCell(Text(data.suppliername ?? "Name")),
      DataCell(Text(data.sellprice.toString())),
      DataCell(Text(data.supplierprice.toString())),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Delete",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Print",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Edit",
            ),
          ),
        ],
      )),
    ],
  );
}
