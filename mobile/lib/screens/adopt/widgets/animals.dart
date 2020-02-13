import 'package:animaisufc/screens/animal_detail/animal_detail_page.dart';
import 'package:animaisufc/stores/animal_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

import 'animal_card.dart';
import 'categories_controller.dart';

class Animals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _animalStore = Provider.of<AnimalStore>(context);
    _animalStore.fetchAnimalsList();

    return Expanded(
      child: Container(
        child: Observer(
          name: 'AnimalsList',
          builder: (context) {
            var animals = _animalStore.animals;

            if (animals == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return AnimationLimiter(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(12),
                addAutomaticKeepAlives: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: animals.length,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    columnCount: 2,
                    child: ScaleAnimation(
                      child: GestureDetector(
                        child: AnimalCard(
                          index,
                          animals[index].name,
                          animals[index].fileUrl,
                          animals[index].sex,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AnimalDetailPage(index: index),
                              fullscreenDialog: true,
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
