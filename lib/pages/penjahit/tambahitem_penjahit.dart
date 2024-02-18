import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_tambahitem.dart';
import 'package:faris_app/pages/widgets/navbarslipgaji.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class TambahItemPenjahit extends StatefulWidget {
  @override
  State<TambahItemPenjahit> createState() => _TambahItemPenjahitState();
}

class _TambahItemPenjahitState extends State<TambahItemPenjahit> {
  late DateFormat now;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    left: 24,
                    right: 24,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ButtonBack(
                          TextButtonBack: 'Tambah item yang dijahit')),
                ),
                SizedBox(
                  height: 36,
                ),
                BanerDay(),
                SizedBox(
                  height: 54,
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Wrap(
                    runSpacing: 16,
                    children: <Widget>[
                      CardTambahItem(hari: 'Senin'),
                      CardTambahItem(hari: 'Selasa'),
                      CardTambahItem(hari: 'Rabu'),
                      CardTambahItem(hari: 'Kamis'),
                      CardTambahItem(hari: 'Jum`at'),
                      CardTambahItem(hari: 'Sabtu'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: NavbarSlipGaji(),
            )
          ],
        ),
      ),
    );
  }

  Widget BanerDay() {
    var now = new DateTime.now();
    int week = now.weekday;

    return Container(
      height: 96,
      color: P100,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('EEEE', 'in_ID').format(now),
                    style: headlines6,
                  ),
                  Text(
                    DateFormat('d MMMM y', 'in_ID').format(now),
                    style: headlines6,
                  )
                ],
              ),
            ),
            Spacer(),
            Image.asset('assets/images/line1.png'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                top: 38,
              ),
              child: Column(
                children: [
                  Text(
                    'Hari ke $week',
                    style: headlines6,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
