import 'package:flutter/material.dart';
import 'package:foodee_app/Screens/detail_screen.dart';

class MiniBanners extends StatelessWidget {
  final String text;
  final String imgPath;
  final Color containerColor;
  const MiniBanners(
      {super.key,
      required this.text,
      required this.imgPath,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(imgPath: imgPath, text: text),
            ));
      },
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Text(text),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(imgPath),
                    ],
                  ),
                ),
              ],
            ),
            height: 128,
            width: 105,
            decoration: BoxDecoration(
                color: containerColor, borderRadius: BorderRadius.circular(28)),
          ),
        ],
      ),
    );
  }
}
