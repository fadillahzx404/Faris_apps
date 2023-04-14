import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonBack extends StatelessWidget {
  String TextButtonBack;

  ButtonBack({
    required this.TextButtonBack,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(
            'assets/images/arrow_left.png',
            width: 24,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            TextButtonBack,
            style: headlines6,
          )
        ],
      ),
    );
  }
}
