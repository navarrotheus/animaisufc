import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';

class AnimalInfo extends StatelessWidget {
  final String name;
  final String sex;
  final String description;

  AnimalInfo(this.name, this.sex, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 26, 16, 18),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(46),
          topRight: Radius.circular(46),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: FontNameTitle,
                    fontWeight: FontWeight.w300,
                    fontSize: 44,
                    color: Color(0xFF2F3A3D),
                  ),
                ),
              ),
              sex == 'm' ? largeMaleIcon : largeFemaleIcon,
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 13,
                fontFamily: FontNameDescription,
                color: Color(0xFF717171),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: ButtonColor,
            child: Text(
              'Me adote!',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
