import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/core/constants/strings.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/character_image.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/character_name.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel character;
  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            characterDetailsScreen,
            arguments: character,
          );
        },
        child: Hero(
          tag: character.id,
          child: GridTile(
            footer: CharacterName(name: character.name),
            child: CharacterImage(image: character.image),
          ),
        ),
      ),
    );
  }
}
