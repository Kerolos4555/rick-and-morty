import 'package:flutter/material.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/character_info.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/custom_divider.dart';

class Details extends StatelessWidget {
  final CharacterModel character;
  const Details({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterInfo(title: 'status: ', value: character.status),
          CustomDivider(endIndent: 310),
          CharacterInfo(title: 'species: ', value: character.species),
          CustomDivider(endIndent: 300),
          CharacterInfo(title: 'type: ', value: character.type),
          CustomDivider(endIndent: 320),
          CharacterInfo(title: 'gender: ', value: character.gender),
          CustomDivider(endIndent: 310),
          CharacterInfo(title: 'origin: ', value: character.origin.originName),
          CustomDivider(endIndent: 310),
          CharacterInfo(
            title: 'location: ',
            value: character.location.locationName,
          ),
          CustomDivider(endIndent: 295),
          CharacterInfo(
            title: 'Episodes: ',
            value:
                character.episode
                    .map((episodeNumber) => episodeNumber.split('/').last)
                    .toString(),
          ),
          CustomDivider(endIndent: 295),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
