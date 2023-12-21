import 'package:flutter/material.dart';

class Message extends StatelessWidget {
   String title;
   String content;
   Message({super.key, required this.title, required this.content});
  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        FloatingActionButton(
          child:  Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

  }
}
