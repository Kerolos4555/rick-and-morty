import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';

class CustomSliverAppBar extends StatelessWidget {
  final CharacterModel characterModel;
  const CustomSliverAppBar({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: MyColors.myWhite),
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          characterModel.name,
          style: TextStyle(color: MyColors.myWhite),
        ),
        background: Hero(
          tag: characterModel.id,
          child: Image.network(characterModel.image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
