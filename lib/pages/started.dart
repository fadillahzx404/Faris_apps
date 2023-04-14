import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Started extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Image.asset(
                'assets/images/Started.png',
                height: 222,
                width: 234,
              ),
              SizedBox(height: 48),
              Text(
                'Halo , selamat datang \nDi faris apps',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 192,
              ),
              Container(
                height: 45,
                width: 126,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Color.fromARGB(255, 243, 231, 231),
                        Color(0xffC8F1A2),
                      ]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lanjutkan',
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'KLik lanjutkan untuk memulai',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
