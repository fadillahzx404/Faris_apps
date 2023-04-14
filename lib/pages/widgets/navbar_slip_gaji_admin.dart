import 'package:faris_app/pages/admin/edit_user.dart';
import 'package:faris_app/pages/admin/home_admin.dart';
import 'package:faris_app/pages/admin/total_gaji_penjahit.dart';
import 'package:faris_app/pages/penjahit/total_gaji.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarSlipGajiAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              onTap: (() {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TotalGajiPenjahit()),
                    (route) => false);
              }),
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
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Slip Gaji',
                      style: overline2.copyWith(fontWeight: FontWeight.w600),
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
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/iconmenu/icon_home_outline.png',
                      width: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Beranda',
                      style: overline3.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Material(
            child: InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => EditUser()),
                    (route) => false);
              },
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/iconmenu/icon_profile_admin.png',
                      width: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'User Page',
                      style: overline3.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
