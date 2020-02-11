import 'package:flutter/material.dart';

class AnimalInfoBackground extends StatelessWidget {
  final String url;

  AnimalInfoBackground(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: double.infinity,
        width: double.infinity,
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
