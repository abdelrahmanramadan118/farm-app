import 'package:flutter/material.dart';

import '../main.dart';

class PAM extends StatefulWidget {
   PAM({super.key});

  @override
  _PAM createState() => _PAM();
}

class _PAM extends State<PAM> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Row(
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
      );
    
  }
}