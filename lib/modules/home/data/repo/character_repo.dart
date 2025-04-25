import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/error/network_error.dart';
import 'package:rick_and_morty/modules/home/data/api/api_services.dart';
import 'package:rick_and_morty/modules/home/data/models/character_model.dart';

class CharacterRepo {
  final ApiServices apiServices;

  CharacterRepo({required this.apiServices});

  Future<Either<NetworkError, List<CharacterModel>>> getAllCharacters() async {
    try {
      var characters = await apiServices.getAllCharacters();
      return right(
        characters
            .map((character) => CharacterModel.fromJson(character))
            .toList(),
      );
    } on DioException catch (error) {
      return left(ServerError.fromDioException(error));
    } catch (error) {
      return left(ServerError(errorMessage: error.toString()));
    }
  }
}
