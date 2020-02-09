import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final String _name;
  final String _url;
  final String _sex;

  AnimalCard(
    this._name,
    this._url,
    this._sex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(0),
          child: Container(
            constraints: BoxConstraints.expand(
              width: 156,
              height: 120,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(19), topRight: Radius.circular(19)),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(_url),
                fit: BoxFit.cover,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(19), topRight: Radius.circular(19)),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(19),
              bottomRight: Radius.circular(19),
            ),
          ),
          child: Container(
            constraints: BoxConstraints.expand(
              width: 156,
              height: 34,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text(
                    _name,
                    style: TitleAnimalCardStyle,
                  ),
                ),
                _sex == 'm' ? maleIcon : femaleIcon
              ],
            ),
          ),
        ),
      ],
    );
  }
}
