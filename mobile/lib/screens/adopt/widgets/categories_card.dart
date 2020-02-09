import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesCard extends StatelessWidget {
  final String _url;
  final String _tipo;

  CategoriesCard(this._url, this._tipo);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: <Widget>[
          // Ícone animal
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 14, 8),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              constraints: BoxConstraints.expand(
                height: 50,
                width: 50,
              ),
              decoration: BoxDecoration(
                color: CategoriesIconColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.network(
                _url,
                semanticsLabel: _tipo,
              ),
            ),
          ),
          // Textos
          Padding(
            padding: const EdgeInsets.only(right: 36),
            child: Column(
              children: <Widget>[
                Text(
                  _tipo,
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
  }
}
