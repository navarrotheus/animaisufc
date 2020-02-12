import 'package:animaisufc/screens/animal_detail/widgets/prop_card.dart';
import 'package:animaisufc/shared/constants.dart';
import 'package:flutter/material.dart';

class AnimalInfo extends StatelessWidget {
  final String name;
  final String sex;
  final String description;
  final String age;
  final String color;

  AnimalInfo(this.name, this.sex, this.description, this.age, this.color);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      child: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PropCard('Idade', age),
                PropCard('Cor', color),
                PropCard('Sexo', sex),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              constraints: BoxConstraints.expand(
                height: 140,
              ),
              child: Text(
                description,
                maxLines: 8,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: FontNameDescription,
                  color: Color(0xFF313131),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: ButtonColor,
              child: Text(
                'Me adote!',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
