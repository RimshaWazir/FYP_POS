import 'package:flutter/material.dart';

class DrawerHeaderPortion extends StatelessWidget {
  const DrawerHeaderPortion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP1DhX9FevEWM9cGBMaVZ_l706wTbEYbTl8g&usqp=CAU",
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 5,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 22,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 5),
          child: Text(
            "Mr. Zaman Haji",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        const Text(
          "Online Now",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 185, 7),
            fontSize: 14,
          ),
        ),
      ],
    ));
  }
}
