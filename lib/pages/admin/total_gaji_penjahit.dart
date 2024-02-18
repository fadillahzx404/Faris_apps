import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_total_gaji.dart';
import 'package:faris_app/providers/users_providers.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/users.dart';

class TotalGajiPenjahit extends StatelessWidget {
  const TotalGajiPenjahit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UsersProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 24.0,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonBack(TextButtonBack: 'Total Gaji Penjahit')),
            ),
            const SizedBox(
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
                            'Total Gaji Penjahit',
                            style: headlines6,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Untuk melihat total gaji silakan \npilih salah satu penjahit.',
                            style: caption.copyWith(
                              color: A600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/baner_total_gaji.png')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
                left: 24,
                top: 18,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 50,
                  ),
                  child: FutureBuilder(
                    future: userProvider.getRecomendedUsers(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var data = (snapshot.data as List<Users>);

                        int index = 0;

                        return Column(
                          children: data.map((item) {
                            index++;
                            return Container(
                                margin: EdgeInsets.only(
                                  top: index == 1 ? 0 : 16,
                                ),
                                decoration: BoxDecoration(color: A100),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 24,
                                    right: 24,
                                  ),
                                  child: CardTotalGaji(item),
                                ));
                          }).toList(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/error_db.png',
                                width: 200,
                              ),
                              Text(
                                'Database error',
                                style: headlines5,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Silakan hubungi developer',
                                style: subtitle2.copyWith(color: A400),
                              ),
                            ],
                          ),
                        );
                      }

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
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
