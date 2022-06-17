import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/Constant/constant.dart';
import 'package:pokedex_flutter/Constant/ui_helper.dart';
import 'package:pokedex_flutter/Model/pokemon_model.dart';
import 'package:pokedex_flutter/Pages/detail_page.dart';
import 'package:pokedex_flutter/Widgets/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) => DetailPage(pokemon: pokemon)),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(pokemon.name ?? "N/A",
                    style: Constant.getPokemonNameTextStyle()),
              ),
              Expanded(
                child: Chip(
                  label: Text(
                    pokemon.type![0],
                    style: Constant.getTypeChipTextStyle(),
                  ),
                ),
              ),
              Expanded(child: PokeImageAndBall(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
