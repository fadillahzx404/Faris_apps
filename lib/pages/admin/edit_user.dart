import 'package:faris_app/model/users.dart';

import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/card_edit_user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:faris_app/providers/users_providers.dart';

import '../../theme.dart';
import '../widgets/navbar_edit_user.dart';

class EditUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UsersProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
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
                child: ButtonBack(TextButtonBack: 'Edit User'),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: P100,
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
                            'Edit User Penjahit,',
                            style: headlines6,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Silakan Pilih user yang akan di edit',
                            style: caption.copyWith(
                              color: A600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset('assets/images/banner_edit_user.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
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
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 16, bottom: 110),
                child: SingleChildScrollView(
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
                                child: CardEditUser(item));
                          }).toList(),
                        );
                      } else if (snapshot.hasError) {
                        // return Text('${snapshot.hasError}');
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
      floatingActionButton: Container(
        height: 70,
        width: MediaQuery.of(context).size.width - (2 * 24),
        decoration: BoxDecoration(
          color: A100,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: A400, width: 0.80),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: A400,
              blurRadius: 2.0,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
        ),
        child: NavbarEditUserAdmin(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
