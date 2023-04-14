import 'package:faris_app/pages/admin/edit_user2.dart';
import 'package:faris_app/pages/admin/lihat_total_gaji.dart';
import 'package:faris_app/pages/admin/tambah_item_admin.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/users.dart';

class CardEditUser extends StatelessWidget {
  final Users users;

  CardEditUser(this.users);

  @override
  Widget build(BuildContext context) {
    <Users>[];
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: A100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: A300),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: A300,
              blurRadius: 12,
              offset: const Offset(0, 4),
              spreadRadius: -2,
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: Image.network(
                  users.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users.name,
                  style: headlines6,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  users.role,
                  style: overline.copyWith(color: A600),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                top: 26,
              ),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditUser2(users)));
                }),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/iconmenu/icon_setting.png',
                      width: 24,
                    ),
                    Text(
                      'Setting',
                      style: overline,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
