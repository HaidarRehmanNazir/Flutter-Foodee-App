import 'package:flutter/material.dart';

import 'package:foodee_app/Screens/main_screen.dart';
import 'package:foodee_app/widgets/flavors.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final String imgPath;
  final String text;
  const DetailScreen({Key? key, required this.imgPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffFFEF92),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xfffF28482),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(28),
                          bottomRight: Radius.circular(28))),
                  height: 400,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Row(
                          children: [
                            Text(
                              text,
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 25, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Color(0xfffF5CAC3),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Icon(
                                    Icons.close,
                                    color: Color(0xfffF28482),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Classic Taste',
                                style: GoogleFonts.aBeeZee(
                                    color: Color(0xfffF28482),
                                    fontWeight: FontWeight.w700),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xfffF7EDE2),
                                  borderRadius: BorderRadius.circular(28)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'BestSeller',
                                style: GoogleFonts.aBeeZee(
                                    color: Color(0xfffFFFFF),
                                    fontWeight: FontWeight.w500),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xfff84A59D),
                                  borderRadius: BorderRadius.circular(28)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 150),
                  child: Image.asset(
                    imgPath,
                    width: 330,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                    'Add More Flavors',
                    style: GoogleFonts.aBeeZee(fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flavors(
                      imgPath: "assets/images/cheez.png",
                      text1: 'Cheddar',
                      text2: '+\$0.80'),
                  SizedBox(width: 10),
                  Flavors(
                      imgPath: "assets/images/bacon.png",
                      text1: 'Bacon',
                      text2: '+\$0.80'),
                  SizedBox(width: 10),
                  Flavors(
                      imgPath: "assets/images/onion.png",
                      text1: 'Onion',
                      text2: '+\$0.80'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nutritions Facts',
                    style: GoogleFonts.aBeeZee(fontSize: 22),
                  ),
                  Text(
                    '745 Cal',
                    style: GoogleFonts.aBeeZee(fontSize: 22),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '40 g',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '43 g',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '35 g',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'total fat 45%',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'total carbs 70%',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'protein',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                onTap: () {
                  // Handle the "Add to cart" functionality here
                  // You can use this onPressed function to perform any action you desire
                  print('Product added to cart');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0xfffF7EEE4)),
                                  child: Text('-')),
                              SizedBox(width: 8),
                              Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 8),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfffF49392),
                                      borderRadius: BorderRadius.circular(100)),
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    '+',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Color(0xfffF28482))),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Add to cart',
                                style: GoogleFonts.aBeeZee(
                                    color: Color(0xfffFFFFF)),
                              ),
                              Text(
                                '\$32.65',
                                style: GoogleFonts.aBeeZee(
                                    color: Color(0xfffFFFFF),
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color(0xfffF28482),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Color(0xfffF28482))),
                        )
                      ],
                    ),
                  ),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xfffFFFFF),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
