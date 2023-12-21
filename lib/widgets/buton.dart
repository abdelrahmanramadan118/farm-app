import 'package:flutter/material.dart';

import '../../main.dart';

class Buton extends StatelessWidget {
  final String butonTxt;
  VoidCallback? ontap;
  Buton({super.key, required this.butonTxt,this.ontap}) ;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Expanded(
        child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff66B343),
                  ),
                  height: 40,
                  width: 450,
                  child: Center(
                    child: Text(
                      butonTxt,
                      style: TextStyle(
                        fontSize: 17,
                        color: scolor,
                        ),
                    )
                    ),
                 
                ),
      ),
    );
      
  }
}