import 'package:flutter/material.dart';
import 'package:foodee_app/Screens/main_screen.dart';
import 'package:foodee_app/widgets/my_cart_items.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Cart',
                    style: GoogleFonts.aBeeZee(fontSize: screenWidth * 0.06),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      decoration: BoxDecoration(
                        color: Color(0xfffF5CAC3),
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Color(0xfffF28482),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.08),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Divider(
                      color: Color(0xfffF28482),
                    ),
                  ),
                  Container(
                    height: screenWidth * 0.12,
                    width: screenWidth * 0.12,
                    decoration: BoxDecoration(
                      color: Color(0xfffF28482),
                      borderRadius: BorderRadius.circular(screenWidth * 0.3),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.46),
                    child: Container(
                      height: screenWidth * 0.12,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xfffFDE6E6),
                        borderRadius: BorderRadius.circular(screenWidth * 0.3),
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.92),
                    child: Container(
                      height: screenWidth * 0.12,
                      width: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        color: Color(0xfffFDE6E6),
                        borderRadius: BorderRadius.circular(screenWidth * 0.3),
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order',
                    style: GoogleFonts.aBeeZee(fontSize: screenWidth * 0.06),
                  ),
                  Text(
                    'Clear all',
                    style: GoogleFonts.aBeeZee(
                      fontSize: screenWidth * 0.06,
                      color: Color(0xfffF28482),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenWidth * 0.04),
              MyCartItems(
                imgPath: 'assets/images/big-burger.png',
                text: 'Mr.Cheezy',
                text1: '\$65.99',
                text2: '7',
                screenWidth: screenWidth,
              ),
              SizedBox(height: screenWidth * 0.02),
              MyCartItems(
                imgPath: 'assets/images/donut.png',
                text: 'Mr.Donut',
                text1: '\$65.99',
                text2: '9',
                screenWidth: screenWidth,
              ),
              SizedBox(height: screenWidth * 0.02),
              MyCartItems(
                imgPath: 'assets/images/bacon.png',
                text: 'Mr.Bacon',
                text1: '\$65.99',
                text2: '1',
                screenWidth: screenWidth,
              ),
              SizedBox(height: screenWidth * 0.02),
              MyCartItems(
                imgPath: 'assets/images/big-burger.png',
                text: 'Mr.Cheezy',
                text1: '\$65.99',
                text2: '7',
                screenWidth: screenWidth,
              ),
              SizedBox(height: screenWidth * 0.02),
              Row(
                children: [
                  Text(
                    'Don\'t Forget',
                    style: GoogleFonts.aBeeZee(fontSize: screenWidth * 0.06),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.02),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Order Placed Successfully',
                          style: TextStyle(
                            color: Color(0xfffF28482),
                            fontSize: screenWidth * 0.06,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Color(0xfffF28482),
                              size: screenWidth * 0.12,
                            ),
                            SizedBox(height: screenWidth * 0.02),
                            Text(
                              'Your order has been placed successfully!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: screenWidth * 0.025,
                    horizontal: screenWidth * 0.06,
                  ),
                  backgroundColor: Color(0xfffF28482),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Purchase',
                      style: GoogleFonts.aBeeZee(
                        fontSize: screenWidth * 0.06,
                        color: Color(0xfffFFFFF),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Text(
                      '\$67.09',
                      style: GoogleFonts.aBeeZee(
                        fontSize: screenWidth * 0.06,
                        color: Color(0xfffFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
