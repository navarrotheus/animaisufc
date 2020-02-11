import 'package:animaisufc/models/animal_model.dart';
import 'package:animaisufc/screens/animal_detail/widgets/animal_info.dart';
import 'package:animaisufc/screens/animal_detail/widgets/animal_info_background.dart';
import 'package:animaisufc/screens/animal_detail/widgets/back_arrow.dart';
import 'package:animaisufc/stores/animal_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimalDetailPage extends StatelessWidget {
  final int index;
  final String name;

  const AnimalDetailPage({Key key, this.index, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _animalStore = Provider.of<AnimalStore>(context);
    AnimalModel _animal = _animalStore.animals[index];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            AnimalInfoBackground(_animal.fileUrl),
            AnimalInfo(_animal.name, _animal.sex, _animal.description),
          ],
        ),
      ),
    );
  }
}
