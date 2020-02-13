import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 26,
      left: 26,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          constraints: BoxConstraints.expand(
            height: 36,
            width: 32,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
