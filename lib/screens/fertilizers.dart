import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../main.dart';
import '../models/cart.dart';
import '../widgets/productsView.dart';

class Fertilizer extends StatelessWidget {
   Fertilizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: scolor,
        title: Text('Fertilizer',
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
          children:  [
            ProductsView(image: 'assets/images/Urea.jpeg', productName: 'Urea',title: 'Urea',content: '9857.14 EGP',),
            ProductsView(image: 'assets/images/Ammonium Nitrate2.jpeg', productName: 'Ammonium',title: 'Ammonium Nitrate',content: '10500 EGP',),
            ProductsView(image: 'assets/images/Triple Superphosphate (TSP)2.jpeg', productName: 'Triple',title: 'Triple Superphosphate',content: '6000 EGP',),
            ProductsView(image: 'assets/images/Potassium Nitrate.jpeg', productName: 'Potassium',title: 'Potassium Nitrate',content: '18450 EGP',),
            ProductsView(image: 'assets/images/Calcium Ammonium Nitrate (CAN).jpeg', productName: 'Calcium',title: 'Calcium Ammonium',content: '5500 EGP',),
            ProductsView(image: 'assets/images/Ammonium Sulfate.jpeg', productName: 'Ammonium',title: 'Ammonium Sulfate',content: '12000 EGP',),
            ProductsView(image: 'assets/images/Diammonium Phosphate (DAP).jpeg', productName: 'Diammon',title: 'Diammonium',content: '11000 EGP',),
            ProductsView(image: 'assets/images/Monoammonium Phosphate (MAP).jpeg', productName: 'Monoamm',title: 'Monoammonium',content: '14000 EGP',),
            ProductsView(image: 'assets/images/Potassium Sulfate.jpeg', productName: 'Potassium',title: 'Potassium',content: '17257 EGP',),
            ProductsView(image: 'assets/images/Foliar Fertilizers.jpeg', productName: 'Foliar',title: 'Foliar',content: '1100 EGP',),
            
            
          ],
        ),
      ),
      
      
    );
      });
  }
}