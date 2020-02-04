import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: double.infinity,
        width: double.infinity,
      ),
      child: Image.asset(
        'assets/images/jack.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
