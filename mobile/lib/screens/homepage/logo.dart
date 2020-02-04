import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
        bottom: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Image.asset(
              'assets/images/logo-no-text.png',
              width: 80,
              height: 75,
            ),
          ),
          Text(
            'ANIMAIS UFC',
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
