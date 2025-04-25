import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';
import 'package:rick_and_morty/modules/home/data/repo/character_repo.dart';
import 'package:rick_and_morty/modules/home/logic/cubit/characters_states.dart';

class CharactersCubit extends Cubit<CharactersStates> {
  final CharacterRepo characterRepo;
  List<CharacterModel> characters = [];
  List<CharacterModel> searchedCharacters = [];
  bool isSearching = false;

  CharactersCubit({required this.characterRepo}) : super(InitialState());

  static CharactersCubit get(context) => BlocProvider.of(context);

  void startSearch() {
    isSearching = true;
    emit(SearchingIconState());
  }

  void stopSearch(TextEditingController controller) {
    isSearching = false;
    searchedCharacters = [];
    controller.clear();
    emit(SearchingIconState());
  }

  void searching({required String searchingCharacter}) {
    searchedCharacters =
        characters
            .where(
              (character) =>
                  character.name.toLowerCase().startsWith(searchingCharacter),
            )
            .toList();
    emit(SearchingState());
  }

  Future<void> getAllCharacters() async {
    emit(AllCharactersLoadState());
    var result = await characterRepo.getAllCharacters();
    result.fold(
      (error) {
        emit(AllCharactersFailState(errorMessage: error.errorMessage));
      },
      (characters) {
        this.characters = characters;
        emit(AllCharactersSuccessState());
      },
    );
  }
}
