import 'package:faris_app/model/users.dart';
import 'package:faris_app/pages/admin/tambah_item_admin.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class CardEditItemPenjahit extends StatelessWidget {
  final Users users;
  const CardEditItemPenjahit(this.users);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: A100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: A300),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: A300,
                blurRadius: 10,
                offset: const Offset(0.0, 4.0),
                spreadRadius: -2,
              ),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  users.image,
                ),
              ),
            ),
            Text(
              users.name,
              style: headlines6,
            ),
            const Spacer(),
            Container(
              width: 64,
              height: MediaQuery.of(context).size.width,
              child: Material(
                color: P100,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TambahItemAdmin()));
                  },
                  child: Center(
                    child: Image.asset(
                      'assets/images/arrow_right.png',
                      width: 24,
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
