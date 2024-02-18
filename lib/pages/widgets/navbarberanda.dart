import 'package:faris_app/pages/penjahit/profile.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class NavbarBeranda extends StatelessWidget {


    
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
                      'assets/images/iconmenu/icon_doc.png',
                      width: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Slip Gaji',
                      style: overline3.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Material(
            color: P100,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/iconmenu/icon_home.png',
                      width: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Beranda',
                      style: overline2.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Material(
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Profile(),
                  )),
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4, top: 4),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/iconmenu/icon_profile.png',
                      width: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Profile',
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
