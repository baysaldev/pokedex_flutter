// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pokedex_flutter/Widgets/app_title.dart';
import 'package:pokedex_flutter/Widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
