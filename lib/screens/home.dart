import 'package:farm_app/widgets/maintext.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/mainProducts.dart';

class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: color,
        title: Text('Digital Agricultural Fertilizer',
        style: TextStyle(
          fontFamily: 'Cherly',
          fontSize: 25,
          color: scolor,
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: scolor,), // Back icon
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back when the icon is pressed
          },
        ),
      ),
      body: Center(
        
        
        child: Container(
          
          color: scolor,
          child: ListView(
            
            
            children: [
              Padding(
                padding:  EdgeInsets.all(35),
                child: Center(
                  child: Text(
                    'The Farm',
                    style: TextStyle(
                      fontFamily: 'Pacifico-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                        },
                        child: GestureDetector(
                          onTap:() {
                            Navigator.pushNamed(context, 'fertilizer');
                          }, 
                          child:  MainProduct(image: 'assets/images/fertilizer.jpeg'),
                          ),
                        ),
                       MainText(s: 'Fertilizer'),
                    ],
                  ),
                  Container(width: 10,),
                  Column(
                    children: [
                      GestureDetector(
                        onTap:() {
                            Navigator.pushNamed(context, 'seeds');
                          },
                        child:  MainProduct(image: 'assets/images/seeds.jpg')),
                       MainText(s: 'Seeds'),
                    ],
                  ),
                ],
              ),
              Container(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'tractors');
                        },
                        child:  MainProduct(image: 'assets/images/tractor.jpeg')),
                       MainText(s: 'Tractor'),
                    ],
                  ),
                  Container(width: 10,),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'weather');
                        },
                        child:  MainProduct(image: 'assets/images/wether.png')),
                       MainText(s: 'Weather'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: scolor,
  elevation: 1,
  items:  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person,),
      label: 'Profile',
    ),
    
  ],
  selectedItemColor: color, // Set the color for the selected item's label and icon
  unselectedItemColor: Colors.grey, // Set the color for unselected items
  onTap: (int value) {
    if(value == 2){
      Navigator.pushNamed(context, 'profile');
    }else if (value == 1){
      Navigator.pushNamed(context, 'cart');
    }
  },
)

    );
  }
}