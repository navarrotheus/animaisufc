import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color.fromARGB(90, 191, 191, 191),
      ),
      constraints: BoxConstraints.expand(
        width: MediaQuery.of(context).size.width * 0.7049,
        height: MediaQuery.of(context).size.height * 0.0368,
      ),
      // Input de texto
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          icon: Padding(
            child: Icon(MdiIcons.magnify), // Lupa
            padding: const EdgeInsets.only(left: 16),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          hintText: 'Pesquisar por nome',
          hintStyle: TextStyle(
            fontFamily: FontNameDescription,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
