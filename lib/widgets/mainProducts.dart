import 'package:flutter/material.dart';

class MainProduct extends StatelessWidget {
   String image;
   MainProduct({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      width: 170,
                      height: 170,
                      child: Image.asset(image),
                      
                    ),
                  );
  }
}