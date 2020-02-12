import 'package:flutter/material.dart';

class PropCard extends StatelessWidget {
  final String propTitle;
  final String description;

  PropCard(this.propTitle, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Text(propTitle),
          Text(description),
        ],
      ),
    );
  }
}
