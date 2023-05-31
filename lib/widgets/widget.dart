import 'package:flutter/material.dart';

import '../app/colors.dart';

class Button extends StatelessWidget {
  const Button({
    required this.ontap,
    super.key,
    required this.t1,
  });
  final String t1;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width * 0.15, 50),
        backgroundColor: color,
      ),
      onPressed: ontap,
      child: Text(
        t1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}

class RadioButton extends StatelessWidget {
  RadioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: 1,
          groupValue: 1,
          onChanged: ((value) {}),
        ),
        const Text("ADMIN"),
        Radio(
          value: 2,
          groupValue: 2,
          onChanged: ((value) {}),
        ),
        const Text("KPO"),
      ],
    );
  }
}

class circles extends StatelessWidget {
  const circles({
    required this.height,
    required this.width,
    super.key,
  });
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
