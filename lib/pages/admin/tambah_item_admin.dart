import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_tambahitem.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class TambahItemAdmin extends StatefulWidget {
  const TambahItemAdmin({Key? key}) : super(key: key);

  @override
  State<TambahItemAdmin> createState() => _TambahItemAdminState();
}

class _TambahItemAdminState extends State<TambahItemAdmin> {
  late DateFormat now;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
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
                const SizedBox(
                  height: 36,
                ),
                BanerDay(),
                const SizedBox(
                  height: 54,
                )
              ],
            ),
            Expanded(
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
            
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BanerDay() {
    var now = DateTime.now();
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
            const Spacer(),
            Image.asset('assets/images/line1.png'),
            const Spacer(),
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
