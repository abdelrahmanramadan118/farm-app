import 'package:flutter/material.dart';

class Field extends StatelessWidget {
   String? hintText;
  Field({super.key, this.hintText});
  
  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(

              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  
                )
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}