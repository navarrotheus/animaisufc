import 'package:animaisufc/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({Key key}) : super(key: key);

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
                image: NetworkImage('https://i.ibb.co/hY7HtmQ/rick.jpg'),
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
                    'Rick',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: FontNameTitle,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/male.svg',
                  width: 13,
                  height: 12,
                  color: Color(0xFF85A2FF),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
