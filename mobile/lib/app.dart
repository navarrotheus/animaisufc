import 'package:flutter/material.dart';

import 'screens/adopt/adopt.dart';

class RunApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Adopt(),
      debugShowCheckedModeBanner: false,
    );
  }
}
