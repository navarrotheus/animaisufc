import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color.fromARGB(90, 191, 191, 191),
          ),
          constraints: BoxConstraints.expand(width: 290, height: 32),
          child: TextField(
            style: TextStyle(fontSize: 14),
            decoration: InputDecoration(
              icon: Icon(MdiIcons.magnify),
              border: InputBorder.none,
              hintText: 'Pesquisar por nome',
            ),
          ),
        ),
        const Icon(
          MdiIcons.tune,
          size: 28,
          color: const Color.fromARGB(160, 0, 0, 0),
        )
      ],
    );
  }
}
