import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flavors extends StatelessWidget {
  final String imgPath;
  final String text1;
  final String text2;
  const Flavors(
      {super.key,
      required this.imgPath,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xfffFFFFF2), borderRadius: BorderRadius.circular(28)),
      height: 170,
      width: 100,
      child: Column(
        children: [
          SizedBox(height: 10),
          Image.asset(imgPath),
          Text(
            text1,
            style: GoogleFonts.aBeeZee(),
          ),
          Text(
            text2,
            style: GoogleFonts.aBeeZee(),
          ),
        ],
      ),
    );
  }
}
