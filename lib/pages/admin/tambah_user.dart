import 'package:faris_app/pages/widgets/accrodion.dart';
import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';
import '../widgets/Inputfield.dart';

class TambahUser extends StatefulWidget {
  const TambahUser({Key? key}) : super(key: key);

  @override
  State<TambahUser> createState() => _TambahUserState();
}

class _TambahUserState extends State<TambahUser> {
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ButtonBack(TextButtonBack: 'Tambah user karywan')),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Silakan isi data berikut\nuntuk menambahkan user.',
                style: headlines5,
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Wrap(
                      runSpacing: 16,
                      children: <Widget>[
                        Inputfield(
                            titleinputfield: 'Nama',
                            hintInputfield: 'Masukan Nama'),
                        Inputfield(
                            titleinputfield: 'Username',
                            hintInputfield: 'Masukan username'),
                        Inputfield(
                            titleinputfield: 'No Whatsapps',
                            hintInputfield: '08123xxxxxx'),
                        Accrodion(dataRole: 'R'),
                        Inputfield(
                            titleinputfield: 'Password',
                            hintInputfield: '********')
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 32,
                          width: 78,
                          decoration: BoxDecoration(
                            gradient:const LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                colors: <Color>[
                                  Color.fromARGB(255, 245, 245, 245),
                                  Color.fromARGB(255, 199, 46, 46)
                                ]),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: A400,
                                blurRadius: 4.0,
                                offset:const Offset(
                                  0.0,
                                  4,
                                ),
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Kembali',
                              style: caption,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 32,
                          width: 78,
                          decoration: BoxDecoration(
                            gradient:const LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: <Color>[
                                  Color.fromARGB(255, 245, 245, 245),
                                  Color(0xffC8F1A2),
                                ]),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: A400,
                                blurRadius: 4.0,
                                offset: const Offset(
                                  0.0,
                                  4,
                                ),
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              Future<void>.delayed(
                                const Duration(milliseconds: 60),
                                () => showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 48,
                                          ),
                                          Image.asset(
                                              'assets/images/iconmenu/icon_notif.png'),
                                          const SizedBox(
                                            height: 32,
                                          ),
                                          Text(
                                            'Apakah yakin ingin mengubah\ndata user ini ?',
                                            style: caption,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child:const Text('Tidak')),
                                      ElevatedButton(
                                          onPressed: () async {},
                                          child:const Text('Iya')),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Simpan',
                              style: caption,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
