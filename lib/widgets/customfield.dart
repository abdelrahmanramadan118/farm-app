import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  CustomField({super.key,this.label,this.onChanged});
  String? label;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if(data!.isEmpty)
        {
          return 'field is required';
        }
      },
      onChanged: onChanged,
              decoration:  InputDecoration(
                labelText: label,
              ),
            );
  }
}