import 'package:faris_app/pages/penjahit/home_penjahit.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class NavbarSlipGaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 24),
      height: 70,
      decoration: BoxDecoration(
        color: A100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: A400, width: 0.80),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: A400,
            blurRadius: 2.0,
            offset: Offset(
              0.0,
              1.0,
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 24,
          bottom: 12,
          right: 24,
        ),
        child: Row(
          children: [
            Material(
              color: P100,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: (() {}),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 4,
                    top: 4,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/iconmenu/icon_doc_filled.png',
                        width: 20,
                      ),
                      Text(
                        'Slip Gaji',
                        style: overline2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Material(
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            HomePenjahit())),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/iconmenu/icon_home_outline.png',
                        width: 20,
                      ),
                      Text(
                        'Beranda',
                        style: overline3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Material(
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/iconmenu/icon_profile.png',
                        width: 20,
                      ),
                      Text(
                        'Profile',
                        style: overline3,
                      ),
                    ],
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
