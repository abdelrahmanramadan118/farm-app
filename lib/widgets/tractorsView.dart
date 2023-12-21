import 'package:farm_app/widgets/plusAndMinus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../models/cart.dart';

class TractorsView extends StatefulWidget {
   String image;
   String productName;
   String title;
   String content;
   static final CartModel cart = CartModel();
   TractorsView({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
    required this.productName,
  }) : super(key: key);

  @override
  State<TractorsView> createState() => _TractorsViewState();
}

class _TractorsViewState extends State<TractorsView> {
  int quantity = 0;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.title), // Use the title variable here
          content: Text(widget.content), // Use the content variable here
          actions: <Widget>[
            FloatingActionButton(
              child:  Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _showDialog(context);
        },
        child: Container(
          width: 340,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                
                child: Image.asset(
                  widget.image,
                  height: 120,
                  width: 86,
                ),
              ),
              Column(
                children: [
                  Text(
                    widget.productName,
                    style: TextStyle(
                      color: scolor,
                      fontSize: 22,
                    ),
                  ),
                   SizedBox(height: 7,),
                  //----------------
                   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: 40,
              child: IconButton(
                icon: Icon(
                  Icons.remove,
                  color: scolor,
                  ),
                onPressed: () {
                  if (quantity > 0) {
                    setState(() {
                      quantity--;
                    });
                  }
                },
              ),
            ),
             SizedBox(width: 5,),
            Text(
              quantity.toString(),
              style: TextStyle(fontSize: 24,color: scolor),
            ),
             SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: 40,
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: scolor,
                ),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ),
          ],
        ),
                  //--------------------
                ],
              ),
               SizedBox(width: 8,),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  iconColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(color),
                ),
                onPressed: () {
                  if (quantity > 0) {
                    setState(() {
                      // Now access the static cart instance
                     context.read<CartModel>().addToCart(CartItem(
                      productName: widget.productName,
                      quantity: quantity,
                      ));
                    });
                  } else {
                    // Show a message or handle the case where the quantity is 0
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Quantity Error'),
                          content:
                              Text('Please select a quantity greater than 0.'),
                          actions: <Widget>[
                            FloatingActionButton(
                              child: Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text(
                  'Add to cart',
                  style: TextStyle(color: scolor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
