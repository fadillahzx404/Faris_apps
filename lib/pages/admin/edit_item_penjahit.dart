import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_edit_item_penjahit.dart';

import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/users.dart';
import '../../providers/users_providers.dart';

class EditItemPenjahit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UsersProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 24.0,
                right: 24,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonBack(TextButtonBack: 'Edit Item penjahit')),
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: P200,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Edit Item para penjahit',
                            style: headlines6,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Untuk mengedit silakan pilih salah\nsatu penjahit.',
                            style: caption,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/banner_edit_item_penjahit.png'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 18,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_list),
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

                        return Wrap(
                          runSpacing: 16,
                          children: data.map((item) {
                            index++;
                            return Container(
                                decoration: BoxDecoration(color: A100),
                                child: CardEditItemPenjahit(item));
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
