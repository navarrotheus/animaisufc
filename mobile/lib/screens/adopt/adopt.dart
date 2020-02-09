import 'package:animaisufc/models/dog_model.dart';
import 'package:animaisufc/shared/constants.dart';
import 'package:animaisufc/shared/nav_icons_icons.dart';
import 'package:animaisufc/stores/dog_store.dart';
import 'package:flutter/material.dart';

import 'package:animaisufc/screens/adopt/widgets/animals.dart';
import 'package:animaisufc/screens/adopt/widgets/categories.dart';
import 'package:animaisufc/screens/adopt/widgets/search_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Adopt extends StatefulWidget {
  @override
  _AdoptState createState() => _AdoptState();
}

class _AdoptState extends State<Adopt> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    DogStore dogStore = DogStore();
    dogStore.fetchDogsList();
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Observer(
              builder: (BuildContext context) {
                return dogStore.dogs != null
                    ? ListView.builder(
                        itemCount: dogStore.dogs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(dogStore.dogs[index].name),
                          );
                        },
                      )
                    : Center(
                        child: Text('aee'),
                      );
              },
            ),
          ),
        ));
  }
}
