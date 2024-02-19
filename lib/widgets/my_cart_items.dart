import 'package:flutter/material.dart';

class MyCartItems extends StatefulWidget {
  final String imgPath;
  final String text;
  final String text1;
  final String text2;

  const MyCartItems({
    Key? key,
    required this.imgPath,
    required this.text,
    required this.text1,
    required this.text2,
    required double screenWidth,
  }) : super(key: key);

  @override
  _MyCartItemsState createState() => _MyCartItemsState();
}

class _MyCartItemsState extends State<MyCartItems> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Image.asset(widget.imgPath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text),
            Text(widget.text1),
            Text(widget.text2),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: incrementQuantity,
              icon: Icon(Icons.add),
            ),
            Text('$quantity'),
            IconButton(
              onPressed: decrementQuantity,
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
