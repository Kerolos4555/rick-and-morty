import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/colors.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_states.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/character_item.dart';

class CharactersList extends StatelessWidget {
  final TextEditingController controller;
  const CharactersList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<CharactersCubit, CharactersStates>(
        builder: (context, state) {
          return Container(
            color: MyColors.myGrey,
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount:
                      controller.text.isNotEmpty
                          ? CharactersCubit.get(
                            context,
                          ).searchedCharacters.length
                          : CharactersCubit.get(context).characters.length,
                  itemBuilder: (context, index) {
                    return CharacterItem(
                      character:
                          controller.text.isNotEmpty
                              ? CharactersCubit.get(
                                context,
                              ).searchedCharacters[index]
                              : CharactersCubit.get(context).characters[index],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
