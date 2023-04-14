import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:faris_app/model/users.dart';
import 'package:faris_app/pages/widgets/Inputfield.dart';
import 'package:faris_app/pages/widgets/accrodion.dart';
import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class EditUser2 extends StatefulWidget {
  final Users users;
  EditUser2(this.users);
  @override
  State<EditUser2> createState() => _EditUser2State();
}

class _EditUser2State extends State<EditUser2> {
  final GlobalKey<ExpansionTileCardState> cardRole = new GlobalKey();
  var isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24,
                top: 24,
              ),
              child: InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: ButtonBack(TextButtonBack: 'Edit User Penjahit')),
            ),
            const SizedBox(
              height: 48,
            ),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.users.image),
                  radius: 70,
                ),
                Positioned(
                  bottom: -5,
                  right: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Tab(
                      icon: Image(
                        image: AssetImage(
                            'assets/images/iconmenu/icon_edit_photo.png'),
                        width: 60,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Wrap(
                runSpacing: 12,
                children: [
                  Inputfield(
                      titleinputfield: 'Nama',
                      hintInputfield: widget.users.name),
                  Inputfield(
                      titleinputfield: 'Username',
                      hintInputfield: widget.users.username),
                  Accrodion(
                    dataRole: widget.users.role,
                  ),
                  Inputfield(
                      titleinputfield: 'No Whatsapp',
                      hintInputfield: Text('${widget.users.nomor}').toString()),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 32,
                    width: 78,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: <Color>[
                            Color.fromARGB(255, 245, 245, 245),
                            Color.fromARGB(255, 199, 46, 46)
                          ]),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: A400,
                          blurRadius: 4.0,
                          offset: Offset(
                            0.0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Kembali',
                        style: caption,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 32,
                    width: 78,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: <Color>[
                            Color.fromARGB(255, 245, 245, 245),
                            Color(0xffC8F1A2),
                          ]),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: A400,
                          blurRadius: 4.0,
                          offset: Offset(
                            0.0,
                            4,
                          ),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Future<void>.delayed(
                            const Duration(milliseconds: 60),
                            () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 48,
                                            ),
                                            Image.asset(
                                                'assets/images/iconmenu/icon_notif.png'),
                                            SizedBox(
                                              height: 32,
                                            ),
                                            Text(
                                              'Apakah yakin ingin mengubah\ndata user ini ?',
                                              style: caption,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )));
                      },
                      child: Text(
                        'Simpan',
                        style: caption,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
