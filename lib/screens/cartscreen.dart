import 'package:farm_app/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

// ...

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: scolor,
            title: Text(
              'Cart',
              style: TextStyle(
                color: color,
                fontFamily: 'Cherly',
                fontSize: 25,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: color,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/B.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: cart.cart.length,
                itemBuilder: (context, index) {
                  final item = cart.cart[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: scolor,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ListTile(
                        title: Text(
                          item.productName,
                          style: TextStyle(color: color),
                        ),
                        subtitle: Text(
                          'Quantity: ${item.quantity}',
                          style: TextStyle(color: color),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: color,
                          ),
                          onPressed: () {
                            context
                                .read<CartModel>()
                                .removeFromCart(item.productName);
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

// ...
