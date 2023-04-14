import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_expanded_gaji.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class LihatTotalGaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 24.0,
                right: 24.0,
              ),
              child: InkWell(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: ButtonBack(TextButtonBack: 'Lihat Total Gaji')),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: P200),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Penjahit 1',
                            style: headlines4,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Berikut adalah total\ngaji penjahit 1.',
                            style: caption.copyWith(
                              color: A600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset('assets/images/baner_total_gaji.png')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                transform: Matrix4.translationValues(
                  0.0,
                  -12.0,
                  0.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  color: A100,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: A300,
                        blurRadius: 16.0,
                        offset: Offset.fromDirection(
                          0.0,
                          1.0,
                        ))
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('Bagikan Gaji'),
                            color: P100,
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Wrap(
                          runSpacing: 12,
                          children: <Widget>[
                            for (int i = 0; i < 6; i++) CardExpanGaji()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: A100,
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Text(
                'Total',
                style: headlines6,
              ),
              Spacer(),
              Text(
                'Rp. 200.000',
                style: headlines6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
