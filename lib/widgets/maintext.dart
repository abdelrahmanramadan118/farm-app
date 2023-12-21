import 'package:flutter/material.dart';

import '../main.dart';
class MainText extends StatelessWidget {
   String s;
   MainText({super.key, required this.s});
  
  @override
  Widget build(BuildContext context) {
    return Text(s,
                      style: TextStyle(
                        color: color,
                        fontFamily: 'EduTASBeginner-VariableFont_wght',
                        fontSize: 20
                      ),
                      );
  }
}