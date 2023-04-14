import 'package:flutter/material.dart';

import '../../theme.dart';

class Inputfield extends StatelessWidget {
  String titleinputfield;
  String hintInputfield;
  
  

  Inputfield({
    required this.titleinputfield,
    required this.hintInputfield,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleinputfield,
          style: subtitle2,
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: A100,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: A500,
                width: 2,
              ),
            ),
            hintText: hintInputfield,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 20,
            ),
          ),
        ),
      ],
    );
  }
}
