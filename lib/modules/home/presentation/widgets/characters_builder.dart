import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_states.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/characters_list.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/error_widget.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/progress_indicator.dart';

class CharactersBuilder extends StatelessWidget {
  final TextEditingController controller;
  const CharactersBuilder({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersStates>(
      builder: (context, state) {
        if (CharactersCubit.get(context).characters.isNotEmpty ||
            CharactersCubit.get(context).searchedCharacters.isNotEmpty) {
          return CharactersList(controller: controller);
        } else if (state is AllCharactersFailState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return CustomProgressIndicator();
        }
      },
    );
  }
}
