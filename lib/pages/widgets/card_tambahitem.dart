import 'package:faris_app/pages/penjahit/input_jahitan.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTambahItem extends StatelessWidget {
  String hari;

  CardTambahItem({
    required this.hari,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24,
      ),
      child: Container(
        height: 69,
        decoration: BoxDecoration(
          color: A100,
          border: Border.all(color: A300, width: 1),
          borderRadius: BorderRadius.circular(4),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: A300,
              blurRadius: 4,
              offset: Offset(0.0, 4.0),
            )
          ],
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/card_vector1.png'),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 23,
                  ),
                  child: Text(
                    hari,
                    style: body2,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: Container(
                height: 30,
                width: 102,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Color.fromARGB(255, 245, 245, 245),
                        Color(0xffC8F1A2),
                      ]),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: A400,
                      blurRadius: 4.0,
                      offset: Offset(
                        0.0,
                        2,
                      ),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InputJahitan()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: [
                        Text(
                          'Detail',
                          style: GoogleFonts.poppins(
                              color: A900,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Image.asset('assets/images/arrow_right.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
