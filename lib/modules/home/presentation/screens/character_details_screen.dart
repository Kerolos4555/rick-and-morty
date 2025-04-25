import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/details.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final CharacterModel character;
  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(characterModel: character),
          SliverList(
            delegate: SliverChildListDelegate([
              Details(character: character),
              SizedBox(height: 500),
            ]),
          ),
        ],
      ),
    );
  }
}
