import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';

class CharacterAppBar extends StatelessWidget {
  const CharacterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.myYellow,
      child: ListTile(
        title: Text(
          'Characters',
          style: TextStyle(color: MyColors.myGrey, fontSize: 22),
        ),
        trailing: IconButton(
          onPressed: () {
            CharactersCubit.get(context).startSearch();
          },
          icon: Icon(Icons.search, color: MyColors.myGrey, size: 26),
        ),
      ),
    );
  }
}
