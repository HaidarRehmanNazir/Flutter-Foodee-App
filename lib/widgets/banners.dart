import 'package:flutter/material.dart';
import 'package:foodee_app/Screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Banners extends StatelessWidget {
  final String imgPath;
  final String text1;
  final String text2;
  final Color containerColor;
  const Banners(
      {super.key,
      required this.imgPath,
      required this.text1,
      required this.text2,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                imgPath: imgPath,
                text: text1,
              ),
            ));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: containerColor),
              height: 108,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Text(
              text1,
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Text(
              text2,
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170),
            child: Image.asset(
              imgPath,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
