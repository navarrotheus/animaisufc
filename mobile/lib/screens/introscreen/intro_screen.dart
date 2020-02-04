import 'package:flutter/material.dart';

import 'background_image.dart';
import 'top_container.dart';
import 'bottom_container.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(), // Imagem de fundo
          TopContainer(), // Logo & frase de efeito
          BottomContainer(), // Botão
        ],
      ),
    );
  }
}
