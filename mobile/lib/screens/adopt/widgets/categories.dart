import 'package:animaisufc/screens/adopt/widgets/categories_controller.dart';
import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pressController = CategoriesController();

    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'Categorias',
              style: TitleCategoriesStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Observer(
                name: 'DogCategory',
                builder: (context) {
                  var _pressed = _pressController;

                  return RaisedButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      _pressed.pressDogButton();
                    },
                    color: _pressed.dogPressed
                        ? CategoriesIconColor
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: <Widget>[
                        // Ícone animal
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 14, 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 6),
                            constraints: BoxConstraints.expand(
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              color: _pressed.dogPressed
                                  ? Colors.white
                                  : CategoriesIconColor,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/616/616408.svg',
                              semanticsLabel: 'Cachorros',
                            ),
                          ),
                        ),
                        // Textos
                        Padding(
                          padding: const EdgeInsets.only(right: 36),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Cachorros',
                                style: TitleCategoriesCardStyle,
                              ),
                              Text(
                                'Total de 26',
                                style: BodyCategoriesCardStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Observer(
                name: 'CatCategory',
                builder: (context) {
                  var _pressed = _pressController;

                  return RaisedButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      _pressed.pressCatButton();
                    },
                    color: _pressed.catPressed
                        ? CategoriesIconColor
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: <Widget>[
                        // Ícone animal
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 14, 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 6),
                            constraints: BoxConstraints.expand(
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              color: _pressed.catPressed
                                  ? Colors.white
                                  : CategoriesIconColor,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.network(
                              'https://image.flaticon.com/icons/svg/616/616430.svg',
                              semanticsLabel: 'Gatos',
                            ),
                          ),
                        ),
                        // Textos
                        Padding(
                          padding: const EdgeInsets.only(right: 36),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Gatos',
                                style: TitleCategoriesCardStyle,
                              ),
                              Text(
                                'Total de 26',
                                style: BodyCategoriesCardStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
