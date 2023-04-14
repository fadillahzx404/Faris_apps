import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class CardJahitan extends StatelessWidget {
  String namajahitan;
  String hargajahitan;

  CardJahitan({
    required this.namajahitan,
    required this.hargajahitan,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => showDialog(
          context: context,
          builder: (context) {
            return Container(
              height: 50,
              width: 50,
            );
          })),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: A100,
              border: Border.all(color: const Color(0xffC8F1A2), width: 1),
              borderRadius: BorderRadius.circular(4),
              boxShadow: const <BoxShadow>[
                BoxShadow(color: Color(0xffC8F1A2), blurRadius: 1)
              ]),
          child: Material(
            child: InkWell(
              splashColor: P100,
              onTap: () {
                Future<void>.delayed(
                  const Duration(), // OR const Duration(milliseconds: 500),
                  () => showDialog(
                    context: context,
                    barrierColor: Colors.black26,
                    builder: (context) => AlertDialog(
                      insetPadding: const EdgeInsets.all(24.0),
                      title: Text(namajahitan),
                      content: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 90,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              child: TextFormField(
                                style: caption,
                                decoration: InputDecoration(
                                    fillColor: A100,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    hintText:
                                        'Masukan item yang telah di jahit',
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8)),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 32,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
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
                                        offset: Offset(
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
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: 32,
                                  width: 78,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
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
                                    onPressed: () {},
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
                    ),
                  ),
                );
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      namajahitan,
                      style: caption,
                    ),
                    const Spacer(),
                    Text(
                      hargajahitan,
                      style: caption,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
