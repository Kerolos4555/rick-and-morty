import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/constants/strings.dart';
import 'package:rick_and_morty/core/helper/injection_helper.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';
import 'package:rick_and_morty/modules/home/data/repo/character_repo.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_cubit.dart';
import 'package:rick_and_morty/modules/home/presentation/screens/character_details_screen.dart';
import 'package:rick_and_morty/modules/home/presentation/screens/characters_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (_) =>
                        CharactersCubit(characterRepo: getIt<CharacterRepo>())
                          ..getAllCharacters(),
                child: CharactersScreen(),
              ),
        );
      case characterDetailsScreen:
        final character = settings.arguments as CharacterModel;
        return MaterialPageRoute(
          builder: (_) => CharacterDetailsScreen(character: character),
        );
      default:
        return null;
    }
  }
}
