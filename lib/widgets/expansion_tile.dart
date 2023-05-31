import 'package:flutter/material.dart';

ExpansionTile sideBarTile(
  String s1,
  String s2,
  String s3,
  Function() ontap, {
  Function()? anotherontap,
  Function()? thirdontap,
}) {
  return ExpansionTile(
    leading: const Icon(
      Icons.inventory_2_outlined,
    ),
    title: Text(s1),
    children: [
      ListTile(
        leading: const Icon(
          Icons.inventory_outlined,
        ),
        title: Text(s2),
        onTap: ontap,
      ),
      ListTile(
        leading: const Icon(
          Icons.inventory_outlined,
        ),
        title: Text(s3),
        onTap: anotherontap,
      ),
    ],
  );
}
