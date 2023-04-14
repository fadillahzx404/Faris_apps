import 'package:faris_app/pages/penjahit/tambahitem_penjahit.dart';
import 'package:faris_app/pages/penjahit/total_gaji.dart';
import 'package:faris_app/pages/widgets/card_menu.dart';
import 'package:faris_app/pages/widgets/navbarberanda.dart';
import 'package:faris_app/pages/widgets/navbarslipgaji.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class HomePenjahit extends StatefulWidget {
  @override
  State<HomePenjahit> createState() => _HomePenjahitState();
}

class _HomePenjahitState extends State<HomePenjahit> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 250,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xffE6F8D0),
                Color.fromARGB(255, 245, 245, 245),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 36.0,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Beraktifitas.',
                style: caption,
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Image.asset(
                  'assets/images/profile_penjahit.png',
                  width: 100,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  'Penjahit',
                  style: subtitle2,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget Menu() {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: A100,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: A300,
                blurRadius: 18,
                offset: Offset(
                  0.0,
                  -6,
                ),
              ),
            ],
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 24,
                right: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu Utama',
                    style: headlines6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 36,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => TambahItemPenjahit()),
                                ));
                          },
                          child: CardMenu(
                            iconMenu: 'assets/images/iconmenu/icon_add_Doc.png',
                            descriptionMenu: 'Tambah item\nyang dijahit',
                          ),
                        ),
                        SizedBox(
                          width: 64,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TotalGaji()));
                          },
                          child: CardMenu(
                            iconMenu:
                                'assets/images/iconmenu/icon_copy_doc.png',
                            descriptionMenu: 'Lihat total\ngaji',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: A100,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            Menu(),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: MediaQuery.of(context).size.width - (2 * 24),
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
            )
          ],
        ),
        child: NavbarBeranda(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
