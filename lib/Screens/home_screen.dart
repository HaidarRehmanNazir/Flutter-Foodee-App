import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodee_app/widgets/banners.dart';
import 'package:foodee_app/widgets/mini_banners.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 255, 245, 186),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Container(
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/profile.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back Haider',
                              style: GoogleFonts.aBeeZee(),
                            ),
                            Text(
                              'How much hungry are you?',
                              style: GoogleFonts.aBeeZee(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xfffF28482),
                        ),
                        child: Icon(
                          Icons.line_style,
                          color: Colors.white,
                        ),
                      ),
                      hintStyle: TextStyle(height: 1.4),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfffF5F5F5)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfffF5F5F5)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Color(0xfffF5F5F5),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Today\'s Menu',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Banners(
                        containerColor: Color(0xfff84A59D),
                        imgPath: 'assets/images/donut.png',
                        text1: 'Free Donuts',
                        text2: 'For orders over \$20',
                      ),
                      SizedBox(width: 8),
                      Banners(
                        containerColor: Color(0xfffEFBC64),
                        imgPath: 'assets/images/big-burger.png',
                        text1: 'Free Burgers',
                        text2: 'For orders over \$30',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MiniBanners(
                        containerColor: Color(0xfffFFEF92),
                        text: 'Burger',
                        imgPath: 'assets/images/burger.png',
                      ),
                      SizedBox(width: 8),
                      MiniBanners(
                        containerColor: Color(0xfffF5CAC3),
                        text: 'Fries',
                        imgPath: 'assets/images/fries.png',
                      ),
                      SizedBox(width: 8),
                      MiniBanners(
                        containerColor: Color(0xfffA9D7DA),
                        text: 'Drink',
                        imgPath: 'assets/images/Drink.png',
                      ),
                      SizedBox(width: 8),
                      MiniBanners(
                        containerColor: Color(0xfffB6D7CF),
                        text: 'Drink',
                        imgPath: 'assets/images/Drink.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Best Offers',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: [
                      Image.asset('assets/images/hot-dog.png'),
                      SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'French Dog',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Testy & Spicy',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color.fromARGB(255, 255, 255, 211),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
