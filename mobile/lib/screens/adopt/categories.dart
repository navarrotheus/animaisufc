import 'package:flutter/material.dart';

import 'package:animaisufc/style.dart';
import 'package:animaisufc/screens/adopt/categories_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 24),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CategoriesCard(
                'https://image.flaticon.com/icons/svg/616/616408.svg',
                'Cachorros',
              ),
              CategoriesCard(
                'https://image.flaticon.com/icons/svg/616/616430.svg',
                'Gatos',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
