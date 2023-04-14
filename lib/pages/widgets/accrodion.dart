import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:faris_app/model/users.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class Accrodion extends StatefulWidget {
  final String dataRole;

  Accrodion({required this.dataRole});

  @override
  State<Accrodion> createState() => _AccrodionState();
}

class _AccrodionState extends State<Accrodion> {
  @override
  final GlobalKey<ExpansionTileCardState> cardRole = new GlobalKey();
  var isExpanded = true;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Role',
          style: subtitle2,
        ),
        const SizedBox(
          height: 4,
        ),
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: A500, width: 2),
          ),
          child: ExpansionTile(
            key: cardRole,
            trailing: isExpanded ? null : const Icon(Icons.arrow_circle_up),
            title: Text(
              widget.dataRole,
            ),
            tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
            children: <Widget>[
              const Divider(
                thickness: 1.0,
                height: 2.0,
              ),
              Container(
                clipBehavior: Clip.none,
                color: A200,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'admin',
                          style: body2,
                        ),
                        Divider(
                          thickness: 1.0,
                        ),
                        Text(
                          'penjahit',
                          style: body2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
