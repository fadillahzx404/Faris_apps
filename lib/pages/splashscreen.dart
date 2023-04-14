import 'dart:async';

import 'package:faris_app/pages/admin/home_admin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => HomeAdmin(),
              transitionDuration: Duration(seconds: 2),
              reverseTransitionDuration: Duration(seconds: 2),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 252,
              ),
              Image.asset(
                'assets/images/Logo_Faris.png',
                height: 93,
                width: 91,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Faris Apps',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  letterSpacing: 0.15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              LoadingAnimationWidget.inkDrop(
                color: Color(0xffC8F1A2),
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
