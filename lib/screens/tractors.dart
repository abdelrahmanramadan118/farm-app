import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../models/cart.dart';
import '../widgets/tractorsView.dart';

class Tractors extends StatelessWidget {
   Tractors({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: scolor,
        title: Text('Tractors',
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
            TractorsView(image: 'assets/images/Tractors.jpg', productName: 'Tractors',title: 'Tractors',content: '985700 EGP',),
            TractorsView(image: 'assets/images/Combine Harvesters.jpg', productName: 'Combine',title: 'Combine Harvesters',content: '1050000 EGP',),
            TractorsView(image: 'assets/images/Plows.jpg', productName: 'Plows',title: 'Plows',content: '600000 EGP',),
            TractorsView(image: 'assets/images/Seed Drills.jpg', productName: 'Seed Drills',title: 'Seed Drills',content: '1845000 EGP',),
            TractorsView(image: 'assets/images/Sprayers.webp', productName: 'Sprayers',title: 'Sprayers',content: '550000 EGP',),
            TractorsView(image: 'assets/images/Irrigation Systems.jpg', productName: 'Irrigation',title: 'Irrigation Systems',content: '1200000 EGP',),
            TractorsView(image: 'assets/images/Harvesters.jpg', productName: 'Harvesters',title: 'Harvesters',content: '1100000 EGP',),
            
            
          ],
        ),
      ),
      
      
    );
      });
  }
}