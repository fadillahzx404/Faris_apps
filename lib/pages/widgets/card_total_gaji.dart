import 'package:faris_app/model/users.dart';
import 'package:faris_app/pages/admin/lihat_total_gaji.dart';
import 'package:faris_app/pages/admin/tambah_item_admin.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTotalGaji extends StatelessWidget {
  final Users users;
  const CardTotalGaji(this.users);
  @override
  Widget build(BuildContext context) {
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
              blurRadius: 8,
              offset: const Offset(0.0, 4.0),
            ),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(users.image),
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
                const SizedBox(
                  height: 4,
                ),
                Text(
                  ('Rp. ${users.gaji}'),
                  style: overline.copyWith(color: A700),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
            ),
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
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
                      MaterialPageRoute(
                          builder: (context) => LihatTotalGaji()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Detail',
                      style: GoogleFonts.poppins(
                          color: A900,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset('assets/images/arrow_right.png'),
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
