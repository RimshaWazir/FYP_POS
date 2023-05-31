import 'package:flutter/material.dart';

class headercard extends StatelessWidget {
  String text;
  headercard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 60,
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
