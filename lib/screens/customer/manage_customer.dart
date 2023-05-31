import 'package:flutter/material.dart';

import 'customer_data.dart';

class Manage_Customer extends StatefulWidget {
  const Manage_Customer({super.key});

  @override
  State<Manage_Customer> createState() => _Manage_CustomerState();
}

class _Manage_CustomerState extends State<Manage_Customer> {
  bool sort = true;
  List<Customerdata>? filterData;

  onsortColum(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
      if (ascending) {
        filterData!.sort((a, b) => a.name!.compareTo(b.name!));
      } else {
        filterData!.sort((a, b) => b.name!.compareTo(a.name!));
      }
    }
  }

  @override
  void initState() {
    filterData = customerData;
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
                    "Manage Customer Information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
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
                          hintText: "Enter Customer Name",
                          border: OutlineInputBorder()),
                      onChanged: (value) {
                        setState(() {
                          customerData = filterData!
                              .where((element) => element.name!.contains(value))
                              .toList();
                        });
                      },
                    ),
                  ),
                  source: RowSource(
                    customerData: customerData,
                    count: customerData.length,
                  ),
                  rowsPerPage: 7,
                  columnSpacing: 8,
                  columns: [
                    const DataColumn(
                      label: Text(
                        "Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    DataColumn(
                        label: const Text(
                          "Customer Name",
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
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "Phone",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "   CNIC",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        "Address",
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
  var customerData;
  final count;
  RowSource({
    required this.customerData,
    required this.count,
  });

  @override
  DataRow? getRow(int index) {
    if (index < rowCount) {
      return recentFileDataRow(customerData![index]);
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
      DataCell(Text(data.code.toString())),
      DataCell(Text(data.name ?? "Name")),
      DataCell(Text(data.email ?? "name@gmail.com")),
      DataCell(Text(data.phone.toString())),
      DataCell(Text(data.cnic.toString())),
      DataCell(Text(data.address ?? "address")),
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
