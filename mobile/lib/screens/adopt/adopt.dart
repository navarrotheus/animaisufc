import 'package:flutter/material.dart';

import '../../nav_icons_icons.dart';

import '../../style.dart';

import 'animals.dart';
import 'categories.dart';
import 'search_bar.dart';

class Adopt extends StatefulWidget {
  @override
  _AdoptState createState() => _AdoptState();
}

class _AdoptState extends State<Adopt> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          iconSize: 32,
          selectedIconTheme:
              IconThemeData(color: const Color(0xFF33B8A9), size: 36),
          selectedItemColor: const Color(0xFF26CABF),
          currentIndex: _index,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(NavIcons.donate),
              title: const Text(
                'Doar',
                style: BottomBarTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(NavIcons.paws),
              title: const Text(
                'Adotar',
                style: BottomBarTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(NavIcons.info),
              title: const Text(
                'Sobre',
                style: BottomBarTextStyle,
              ),
            ),
          ],
        ),
        backgroundColor: AppBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(26, 36, 26, 0),
          child: Column(
            children: <Widget>[
              SearchBar(), // Barra de pesquisa
              Categories(), // Categorias de animais
              Animals(), // Listagem de animais
            ],
          ),
        ));
  }
}
