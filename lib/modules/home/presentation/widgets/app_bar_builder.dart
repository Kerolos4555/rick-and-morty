import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_states.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/character_app_bar.dart';
import 'package:rick_and_morty/modules/home/presentation/widgets/search_app_bar.dart';

class AppBarBuilder extends StatelessWidget {
  final TextEditingController controller;
  const AppBarBuilder({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersStates>(
      builder: (context, state) {
        return CharactersCubit.get(context).isSearching
            ? SearchAppBar(
              controller: controller,
              onChange: (value) {
                CharactersCubit.get(
                  context,
                ).searching(searchingCharacter: value);
              },
            )
            : CharacterAppBar();
      },
    );
  }
}
