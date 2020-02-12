import 'package:flutter/material.dart';

class AnimalInfoBackground extends StatelessWidget {
  final String url;

  AnimalInfoBackground(this.url);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.4,
      child: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
        ),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
