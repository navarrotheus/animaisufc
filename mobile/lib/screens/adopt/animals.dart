import 'package:flutter/material.dart';

import 'animals_card.dart';

class Animals extends StatelessWidget {
  const Animals({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Seu amigo está esperando você'),
        AnimalCard(),
      ],
    );
  }
}
