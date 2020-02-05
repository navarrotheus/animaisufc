import 'package:animaisufc/style.dart';
import 'package:flutter/material.dart';

import 'animals_card.dart';

class Animals extends StatelessWidget {
  const Animals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            'Seu amigo está esperando você',
            style: TitleAnimaisStyle,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            AnimalCard(),
            AnimalCard(),
          ],
        ),
      ],
    );
  }
}
