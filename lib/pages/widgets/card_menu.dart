import 'package:faris_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMenu extends StatelessWidget {
  String iconMenu;
  String descriptionMenu;

  CardMenu({
    required this.iconMenu,
    required this.descriptionMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      shadowColor: A400,
      elevation: 6.0,
      child: Ink(
        width: 111,
        height: 108,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xff9ACC85),
                Color.fromARGB(255, 245, 245, 245),
              ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  iconMenu,
                  width: 24,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  descriptionMenu,
                  style: caption,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
