import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:faris_app/theme.dart';
import 'package:flutter/material.dart';

class CardExpanGaji extends StatefulWidget {
  @override
  State<CardExpanGaji> createState() => _CardExpanGajiState();
}

class _CardExpanGajiState extends State<CardExpanGaji> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  var isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
              color: A100,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: A300,
                  blurRadius: 16.0,
                  offset: Offset(0.0, 4.0),
                ),
              ],
              borderRadius: BorderRadius.circular(8)),
          child: ExpansionTile(
            key: cardA,
            leading: Icon(Icons.remove),
            trailing: isExpanded ? null : Icon(Icons.arrow_circle_up),
            title: Text(
              "Flutter Dev's",
              style: subtitle1,
            ),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 2.0,
              ),
              Container(
                color: A200,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '* obras boxer',
                              style: body2,
                            ),
                            Spacer(),
                            Text(
                              'Rp.200.000',
                              style: body2,
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text(
                              '* obras boxer',
                              style: body2,
                            ),
                            Spacer(),
                            Text(
                              'Rp.200.000',
                              style: body2,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
