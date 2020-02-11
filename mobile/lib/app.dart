import 'package:animaisufc/screens/adopt/adopt_page.dart';
import 'package:animaisufc/stores/animal_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class RunApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        home: AdoptPage(),
        debugShowCheckedModeBanner: false,
      ),
      providers: <SingleChildWidget>[
        Provider<AnimalStore>(
          create: (_) => AnimalStore(),
        ),
      ],
    );
  }
}
