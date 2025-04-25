abstract class CharactersStates {}

class InitialState extends CharactersStates {}

class AllCharactersLoadState extends CharactersStates {}

class AllCharactersSuccessState extends CharactersStates {}

class AllCharactersFailState extends CharactersStates {
  final String errorMessage;
  AllCharactersFailState({required this.errorMessage});
}

class SearchingState extends CharactersStates {}

class SearchingIconState extends CharactersStates {}
