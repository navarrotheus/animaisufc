import 'package:animaisufc/shared/constants.dart';
import 'package:animaisufc/shared/nav_icons_icons.dart';
import 'package:flutter/material.dart';

import 'package:animaisufc/screens/adopt/widgets/animals.dart';
import 'package:animaisufc/screens/adopt/widgets/categories.dart';
import 'package:animaisufc/screens/adopt/widgets/search_bar.dart';

class AdoptPage extends StatefulWidget {
  @override
  _AdoptPageState createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
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
          selectedFontSize: 12.0,
          selectedIconTheme:
              IconThemeData(color: const Color(0xFF33B8A9), size: 32),
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
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SearchBar(),
                  Categories(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Seu amigo está esperando você',
                      style: TitleAnimaisStyle,
                    ),
                  ),
                  Animals(),
                ],
              )),
        ));
  }
}
