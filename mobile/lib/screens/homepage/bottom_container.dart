import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      alignment: Alignment.bottomCenter,
      constraints: BoxConstraints.expand(
        height: double.infinity,
        width: double.infinity,
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 30,
        ),
        textColor: Colors.white,
        onPressed: () {
          print('Clicado');
        },
        color: Color(0xFF1EA296),
        child: Text('Salvar uma vida'),
      ),
    );
  }
}
