import 'package:flutter/material.dart';

import 'logo.dart';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        width: double.infinity,
        height: double.infinity,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Logo(),
          Text(
            'Não compre, adote.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Inconsolata',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
