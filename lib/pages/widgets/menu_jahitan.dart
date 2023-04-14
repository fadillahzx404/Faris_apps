import 'package:faris_app/pages/widgets/card_jahitan.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class MenuJahitan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        color: A100,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/iconmenu/icon_line.png'),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 32,
              ),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  style: caption,
                  decoration: InputDecoration(
                    fillColor: A100,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Pencarian',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0),
                    prefixIcon: Tab(
                      icon: Image.asset(
                        'assets/images/iconmenu/icon_search.png',
                        width: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Wrap(
                  runSpacing: 16,
                  children: <Widget>[
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Balik Paha Boxer',
                        hargajahitan: 'Rp 3,000'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                    CardJahitan(
                        namajahitan: 'Obras Boxer', hargajahitan: 'Rp 6,500'),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
