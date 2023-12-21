import 'package:farm_app/widgets/productsView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/cart.dart';

class seeds extends StatelessWidget {
  const seeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: scolor,
        title: Text('Seeds',
        style: TextStyle(
          fontFamily: 'Cherly',
          fontSize: 25,
          color: color,
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: color,), // Back icon
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back when the icon is pressed
          },
        ), 
        ),
        
      
      body: Center(
        child: ListView(
          children: [
            ProductsView(image: 'assets/images/Wheat.jpeg', productName: 'Wheat',title: 'Wheat',content: '9857.14 EGP',),
            ProductsView(image: 'assets/images/Barley.jpeg', productName: 'Barley',title: 'Barley',content: '10500 EGP',),
            ProductsView(image: 'assets/images/Coffee.jpeg', productName: 'Coffee',title: 'Coffee',content: '6000 EGP',),
            ProductsView(image: 'assets/images/corn.jpeg', productName: 'corn',title: 'corn',content: '18450 EGP',),
            ProductsView(image: 'assets/images/Cotton.jpeg', productName: 'Cotton',title: 'Cotton',content: '5500 EGP',),
            ProductsView(image: 'assets/images/oats2.jpeg', productName: 'Oats',title: 'Oats',content: '12000 EGP',),
            ProductsView(image: 'assets/images/Potatoes.jpeg', productName: 'Potatoes',title: 'Potatoes',content: '11000 EGP',),
            ProductsView(image: 'assets/images/rice.jpeg', productName: 'rice',title: 'rice',content: '14000 EGP',),
            ProductsView(image: 'assets/images/Soybeans.jpeg', productName: 'Soybeans',title: 'Soybeans',content: '17257 EGP',),
            ProductsView(image: 'assets/images/Sugarcane.jpeg', productName: 'Sugarcane',title: 'Sugarcane',content: '1100 EGP',),
            ProductsView(image: 'assets/images/Tea.jpeg', productName: 'Tea',title: 'Tea',content: '9800 EGP',),
            ProductsView(image: 'assets/images/Tomatoes.jpeg', productName: 'Tomatoes',title: 'Tomatoes',content: '15000 EGP',),
           
            
          ],
        ),
        
      ),
      
      
    );
      });
  }
}