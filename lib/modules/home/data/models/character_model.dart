import 'package:rick_and_morty/modules/home/data/models/location_model.dart';
import 'package:rick_and_morty/modules/home/data/models/origin_model.dart';

class CharacterModel {
  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  OriginModel origin;
  LocationModel location;
  String image;
  List<String> episode;
  String characterUrl;
  String created;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.characterUrl,
    required this.created,
  });

  factory CharacterModel.fromJson(json) => CharacterModel(
    id: json['id'],
    name: json['name'],
    status: json['status'],
    species: json['species'],
    type: json['type'],
    gender: json['gender'],
    origin: OriginModel.fromJson(json['origin']),
    location: LocationModel.fromJson(json['location']),
    image: json['image'],
    episode: json['episode'].cast<String>(),
    characterUrl: json['url'],
    created: json['created'],
  );
}
