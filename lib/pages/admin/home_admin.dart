import 'package:faris_app/pages/admin/edit_item_penjahit.dart';
import 'package:faris_app/pages/admin/edit_user.dart';
import 'package:faris_app/pages/admin/tambah_user.dart';
import 'package:faris_app/pages/admin/total_gaji_penjahit.dart';
import 'package:faris_app/pages/widgets/card_menu.dart';
import 'package:faris_app/pages/widgets/navabar_beranda_admin.dart';
import 'package:faris_app/providers/users_providers.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  int selectedIndex = 2;
  bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return ChangeNotifierProvider(
        create: (context) => UsersProvider(),
        child: Container(
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
                  style: body1,
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/profile_pemilik.png',
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'Pemilik',
                    style: subtitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget Menu() {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: A100,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: A300,
                blurRadius: 18,
                offset: const Offset(
                  0.0,
                  -6,
                ),
              ),
            ],
          ),
          child: Expanded(
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) =>
                                          const EditItemPenjahit()),
                                    ));
                              },
                              child: CardMenu(
                                iconMenu:
                                    'assets/images/iconmenu/icon_add_Doc.png',
                                descriptionMenu: 'Edit item\npenjahit',
                              ),
                            ),
                            const SizedBox(
                              width: 64,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const TotalGajiPenjahit())));
                              },
                              child: CardMenu(
                                iconMenu:
                                    'assets/images/iconmenu/icon_copy_doc.png',
                                descriptionMenu: 'Lihat Gaji\nPenjahit',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => const EditUser()),
                                    ));
                              },
                              child: CardMenu(
                                iconMenu:
                                    'assets/images/iconmenu/icon_edit.png',
                                descriptionMenu: 'Edit User\nKaryawan',
                              ),
                            ),
                            const SizedBox(
                              width: 64,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TambahUser()),
                                );
                              },
                              child: CardMenu(
                                iconMenu:
                                    'assets/images/iconmenu/icon_add_person.png',
                                descriptionMenu: 'Tambah User\nKaryawan',
                              ),
                            ),
                          ],
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
                offset: const Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
          ),
          child: NavbarBerandaAdmin(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
