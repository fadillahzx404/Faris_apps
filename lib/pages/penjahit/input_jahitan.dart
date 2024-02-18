import 'package:faris_app/pages/widgets/buttonback.dart';
import 'package:faris_app/pages/widgets/menu_jahitan.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class InputJahitan extends StatefulWidget {
  const InputJahitan({Key? key}) : super(key: key);

  @override
  State<InputJahitan> createState() => _InputJahitanState();
}

class _InputJahitanState extends State<InputJahitan> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: ButtonBack(TextButtonBack: 'Input Data Jahitan')),
            ),
            SizedBox(
              height: 32,
            ),
            BanerDay1(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: Text(
                'Produk yang telah dijahit',
                style: headlines6,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ButtonTambah()
          ],
        ),
      ),
    );
  }

  Widget BanerDay1() {
    var now = DateTime.now();
    return Center(
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        color: P100,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              Text(
                DateFormat('EEEE', 'in_ID').format(now),
                style: headlines2,
              ),
              Text(
                DateFormat('d MMMM y', 'in_ID').format(now),
                style: body1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ButtonTambah() {
    return Center(
      child: Container(
        height: 38,
        width: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
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
            showMaterialModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 20,
                context: context,
                builder: (context) => SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: MenuJahitan(),
                    ));
          },
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Image.asset('assets/images/iconmenu/icon_plus.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Tambah',
                style: button,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
